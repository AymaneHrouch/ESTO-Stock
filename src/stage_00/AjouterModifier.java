package stage_00;

import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.sql.ResultSet;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;

import interfaceGraphique.DB;
import interfaceGraphique.Util;

public abstract class AjouterModifier extends JFrame {
	DefaultTableModel model;
	String tableName;
	String[] th;
	
	String requete;
	
	JTextField jTextFields[];
	String strLabel;
	int forStart;
	
	JPanel panel = new JPanel();
	JLabel label = new JLabel();
	JButton btnAjouterModifier = new JButton();
	JButton btnAnnuler = new JButton("Cancel");
	
	public abstract void btnClicked();
	public abstract void remplireTextFields();

	
	public AjouterModifier(DefaultTableModel model, String tableName, String[] th) {
		this.model = model;
		this.tableName = tableName;
		this.th = th;
	}
	
	public void afficher() {
		ecouterBoutons();
		label.setText(strLabel);
		btnAjouterModifier.setText(strLabel);
		
		label.setFont(new Font("Tahoma", Font.CENTER_BASELINE, 20));
		panel.add(label);
		panel.setMaximumSize(new Dimension(350,40));
		this.add(panel);
		
		jTextFields = new JTextField[th.length - forStart];
		for(int i=forStart; i<th.length; i++) {
			JPanel panel1 = new JPanel();
			JLabel label1 = new JLabel(th[i]);
			jTextFields[i-forStart] = new JTextField();
			if(i==0) jTextFields[i].setEnabled(false); // Dans le cas de Modifier, on veut afficher le champs ID mais pas autoriser le changer.
			panel1.add(label1);
			panel1.add(jTextFields[i-forStart]);
			jTextFields[i-forStart].addKeyListener(new KeyAdapter() {
				@Override
				public void keyPressed(KeyEvent e) {
					if(e.getKeyCode() == 10) {
						btnClicked();
					}
				}
			});
			
			panel1.setLayout(new GridLayout());
			panel1.setBorder(new EmptyBorder(new Insets(10,10,10,10)));
			panel1.setMaximumSize(new Dimension(350,50));
			this.add(panel1);
		}
		remplireTextFields();
		
		JPanel panel2 = new JPanel();
		panel2.add(btnAjouterModifier);
		panel2.add(btnAnnuler);
		panel2.setLayout(new FlowLayout());
		this.add(panel2);
		
		this.setLayout(new BoxLayout(this.getContentPane(), BoxLayout.Y_AXIS));
		this.setBounds(100,100,350,563);
		this.setVisible(true);
	}
	
	public void ecouterBoutons() {
		btnAnnuler.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
                cancel();
			}
		});
		
		btnAjouterModifier.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				btnClicked();
			}
		});
	}
	
	private void cancel() {
		this.dispose();
	}
	
	public String[] getValues() {
		String values[] = new String[jTextFields.length];
		for(int i=0; i<jTextFields.length; i++) {
			values[i] = jTextFields[i].getText();
		}
		return values;
	}
}
