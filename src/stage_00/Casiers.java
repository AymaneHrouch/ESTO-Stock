package stage_00;

import java.awt.EventQueue;

import javax.swing.JFrame;
import java.awt.BorderLayout;
import javax.swing.BoxLayout;
import java.awt.GridBagLayout;
import javax.swing.JLabel;
import javax.swing.JButton;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.RowSpec;


import com.jgoodies.forms.layout.FormSpecs;
import java.awt.Color;
import javax.swing.JPanel;
import java.awt.GridLayout;
import java.awt.GridBagConstraints;
import java.awt.Insets;
import java.awt.FlowLayout;
import java.awt.Font;
import javax.swing.JToolBar;
import javax.swing.JSeparator;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JMenu;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JPopupMenu;
import java.awt.Component;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.awt.Dimension;

public class Casiers {

	public JFrame frame;
	public String nbreDemandes;
	/**
	 * Create the application.
	 */
	public Casiers(int admin) {
		initialize(admin);
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize(int admin) {
		frame = new JFrame();
		frame.setBounds(100, 100, 580, 358);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JLabel lblNewLabel = new JLabel("List Des Casiers");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 20));
		lblNewLabel.setBounds(0, 44, 566, 33);
		lblNewLabel.setBackground(Color.WHITE);
		frame.getContentPane().add(lblNewLabel);
		
		JPanel panel = new JPanel();
		panel.setBounds(0, 87, 566, 233);
		frame.getContentPane().add(panel);
		panel.setLayout(new GridLayout(2,5,0,0));
		
		JButton btnNewButton = new JButton("Casier 1");
		panel.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("Casier 2");
		panel.add(btnNewButton_1);
		
		JButton btnNewButton_2 = new JButton("Casier 3");
		panel.add(btnNewButton_2);
		
		JButton btnNewButton_3 = new JButton("Casier 4");
		panel.add(btnNewButton_3);
		
		JButton btnNewButton_4 = new JButton("Casier 5");
		panel.add(btnNewButton_4);
		
		JButton btnNewButton_5 = new JButton("Casier 6");
		panel.add(btnNewButton_5);
		
		JButton btnNewButton_6 = new JButton("Casier 7");
		panel.add(btnNewButton_6);
		
		JButton btnNewButton_7 = new JButton("Casier 8");
		panel.add(btnNewButton_7);
		
		JButton btnNewButton_8 = new JButton("Casier 9");
		panel.add(btnNewButton_8);
		
		JButton btnNewButton_9 = new JButton("Casier 10");
		panel.add(btnNewButton_9);
		
		JButton btnNewButton_10 = new JButton("Deconnexion");
		btnNewButton_10.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frame.setVisible(false);
				SeConnecter window = new SeConnecter();
				window.frame.setVisible(true);
			}
		});
		btnNewButton_10.setBounds(0, 0, 116, 21);
		frame.getContentPane().add(btnNewButton_10);
		
		if(admin == 1) {
			ResultSet res = DB.executeQuery("SELECT COUNT(id) FROM utilisateurs WHERE valide=0");
			try {
				res.next();
				nbreDemandes =  res.getString(1);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			JButton btnNewButton_11 = new JButton("Demandes (" + nbreDemandes + ")");
			btnNewButton_11.setBounds(433, 0, 143, 21);
			frame.getContentPane().add(btnNewButton_11);			
		}
	}
}
