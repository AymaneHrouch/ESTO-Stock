package stage_00;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.border.EmptyBorder;

public class Demandes extends JFrame {
	public Demandes() {
		this.setTitle("ESTO Magasin | Les Demandes");
		
		JPanel panel = new JPanel();
		JLabel labelTitle = new JLabel("Les Demandes");
		
		labelTitle.setFont(new Font("Tahoma", Font.BOLD, 20));
		panel.add(labelTitle);
		panel.setMaximumSize(new Dimension(300, 200));
		this.add(panel);
		
		JScrollPane sp = new JScrollPane();
		JPanel mainPanel = new JPanel();
		ResultSet rs = DB.executeQuery("SELECT id, prenom, nom FROM utilisateurs WHERE valide!=1");
		try {
			while(rs.next()) {
				JPanel panel1 = new JPanel();
				panel1.setLayout(new BorderLayout());
				JLabel label = new JLabel(rs.getString(2) + " " + rs.getString(3));
				JButton btn = new JButton("Approuver");
				String id = rs.getString(1);
				btn.addActionListener(new ActionListener() {
					
					@Override
					public void actionPerformed(ActionEvent e) {
						btn.setText("Approuvé");
						btn.setEnabled(false);
						DB.executeUpdate("UPDATE utilisateurs SET valide = 1 WHERE id = " + id);
					}
				});
				panel1.add(label, BorderLayout.WEST);
				panel1.add(btn, BorderLayout.EAST);
				panel1.setBorder(new EmptyBorder(new Insets(10, 1, 10, 1)));
				panel1.setMaximumSize(new Dimension(300,50));
				mainPanel.add(panel1);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		sp.setViewportView(mainPanel);
		this.add(sp);
		
		mainPanel.setLayout(new BoxLayout(mainPanel, BoxLayout.Y_AXIS));
		this.setLayout(new BoxLayout(this.getContentPane(), BoxLayout.Y_AXIS));
		this.setSize(350,563);
		this.setVisible(true);
	}
}
