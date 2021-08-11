package stage_00;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;

public class MainFrame extends JFrame {
	JToolBar barre = new JToolBar();
	JButton deconnexion = new JButton("Deconnexion");
	JTabbedPane tp = new JTabbedPane();
	
	public MainFrame(int id) {
		System.out.println("id received at main is " + id);
		setLocationAndSize();
		ajouterComposants();
		ecouterDeconnexion();
		this.setTitle("Gestion Des Commandes");
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setLayout(null);
		this.setBounds(0,0,1100,600);
	}
	
	public void setLocationAndSize() {
		barre.setBounds(0,0,1100,30);
		tp.setBounds(0,30,1080,530);		
	}
	
	public void ajouterComposants() {
		barre.add(deconnexion);
		barre.setRollover(true);
		this.add(barre);
		this.add(tp);
	}
	
	public void afficher() {
		this.setVisible(true);
	}
	
	public void cacher() {
		this.setVisible(false);
	}
	
	public void ecouterDeconnexion() {
		deconnexion.addActionListener(new ActionListener() {	
			public void actionPerformed(ActionEvent e) {
				cacher();
				new LoginFrame();
			}
		});
	}
}