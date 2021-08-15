package stage_00;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.ResultSet;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.RowFilter;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableRowSorter;

public class Tableau extends Frame {
	String tableName;
	String[] th;
	String emplacement;
	String type;
	
	JButton btnAjouter = new JButton("Ajouter");
	JButton btnModifier = new JButton("Modifier");
	
	JButton btnSupprimer = new JButton("Supprimer");
	
	JPanel panel = new JPanel();
	JScrollPane sp = new JScrollPane();
	JTable tb = new JTable();
	DefaultTableModel model = null;
	JTextField tfId = new JTextField();
	JTextField tfRech = new JTextField();

	public Tableau(String tableName, String th[], String emplacement, JFrame prevFrame, int idUser, String type) {
		super(idUser);
		this.tableName = tableName;
		this.th = th;
		this.emplacement = emplacement;
		this.prevFrame = prevFrame;
		this.type = type;
	}
	
	
	public void afficher() {
		this.setTitle("ESTO Magasin | " + emplacement);
		
		tb.setFont(new Font("Tahoma", Font.PLAIN, 16));
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		JLabel label = new JLabel("Type: " + type);
		label.setFont(new Font("Tahoma", Font.BOLD, 25));
		JLabel label1 = new JLabel("Emplacement: " + emplacement);
		label1.setFont(new Font("Tahoma", Font.BOLD, 20));
		panel.add(Box.createRigidArea(new Dimension(20,20)));
		panel.add(label);
		panel.add(Box.createRigidArea(new Dimension(20,20)));
		panel.add(label1);
		panel.add(Box.createRigidArea(new Dimension(20,20)));
		panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
		
		if(isAdmin()) {
			JPanel panelCRUD = new JPanel();
			panelCRUD.setLayout(new FlowLayout());
			panelCRUD.setMaximumSize(new Dimension(400,30));
			ecouterBoutons();
			
			JLabel lblId = new JLabel(th[0]);
			tfId.setPreferredSize(new Dimension(40,30));
			panelCRUD.add(btnAjouter);
			panelCRUD.add(btnModifier);
			panelCRUD.add(btnSupprimer);
			panelCRUD.add(lblId);
			panelCRUD.add(tfId);
			this.add(panelCRUD);
			
	        ecouterTableau(tb);
		}
		
		this.add(panel);
		
		JPanel panelRech = new JPanel();
		panelRech.setMaximumSize(new Dimension(1300, 100));
		JLabel labelRech = new JLabel("Rechercher: ");
		tfRech.addKeyListener(new KeyListener() {
			
			@Override
			public void keyTyped(KeyEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void keyReleased(KeyEvent e) {
                jTextFieldKeyReleased();				
			}
			
			@Override
			public void keyPressed(KeyEvent e) {
				// TODO Auto-generated method stub
				
			}
		});
		tfRech.setPreferredSize(new Dimension(300,35));
		panelRech.add(labelRech);
		panelRech.add(tfRech);
		this.add(panelRech);
		
		sp.setViewportView(tb);
		this.add(sp);
		
		tb.setModel(new DefaultTableModel(new Object [][] { }, th) {
            public boolean isCellEditable(int rowIndex, int columnIndex) { return false; }
		});
		
        
        tb.setCellSelectionEnabled(false);
        String colonnes = String.join(", ", th);   
        chargerTableau(th.length, "SELECT " + colonnes + " FROM " + tableName + " ORDER BY " + th[0] + ";");
        
        createRetourBtn();
        
        this.setBounds(100,100,1300,807);
		this.setLayout(new BoxLayout(this.getContentPane(), BoxLayout.Y_AXIS));
		this.setVisible(true);
	}
	
	public void ecouterBoutons() {
		btnSupprimer.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {				
				String id = tfId.getText();
				String sql = "DELETE FROM " + tableName + " WHERE " + th[0] + "=" + tfId.getText();
				int y = getRow(id);
				if(y == -1) {
					Util.afficherInfo(th[0] + " Inexistant");
					return;
				}
				if(DB.executeUpdate(sql) == -1) return;
				model = (DefaultTableModel) tb.getModel();
				model.removeRow(y);
				tfId.setText("");
			}
		});
		
		btnAjouter.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				new Ajouter(model, tableName, th).afficher();
			}
		});
		
		btnModifier.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				int row = getRow(tfId.getText());
				if(row == -1) {
					Util.afficherInfo(th[0] + " Inexistant");
					return;
				}
				new Modifier(model, tableName, th, row).afficher();
			}
		});
	}
	
	public void chargerTableau(int tableauLength, String requete) {
        model = (DefaultTableModel) tb.getModel();
		try {
			ResultSet rs = DB.executeQuery(requete);
			while(rs.next()) {
		        Object[] ligne = new Object[tableauLength];
		        for(int i = 0; i < tableauLength; i++) {
		        	ligne[i] = rs.getString(i+1);
		        }
		        model.addRow(ligne);
			}
		} catch (Exception ex) {
			Util.afficherErreur("Erreur lors de chargement de tableau depuis la BDD: " + ex.getMessage());
		}
	}

	public void ecouterTableau(JTable table) {
		// Ecouter l'evenemnt click pour remplire les champs
		
		table.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				tb.setSelectionBackground(Color.red);
				JTable target = (JTable)e.getSource();
				int row = target.getSelectedRow();
				
				// remplire le champ de la cle primaire
				tfId.setText(table.getModel().getValueAt(row, 0).toString());
			}
		});
	}
	
	public int getRow(String id) {
		for(int i=0; i<model.getRowCount(); i++) {
			String id_Tableau = (String) model.getValueAt(i, 0);
			if(id.equals(id_Tableau)) {
				return i;
			}
		}
		return -1;
	}
	
    private void jTextFieldKeyReleased() {
          TableRowSorter<DefaultTableModel> tr = new TableRowSorter<DefaultTableModel>(model);
          tb.setRowSorter(tr);
          tr.setRowFilter(RowFilter.regexFilter(tfRech.getText().trim()));
      }
}