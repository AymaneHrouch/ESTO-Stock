package stage_00;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenuBar;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public abstract class List extends Frame {
	public List(Element e, String titre, String tagName, int idUser) {
		super(idUser);
		this.e = e;
		this.emplacement = titre;
		this.tagName = tagName;
	}
	
	public List(Element e, String titre, String tagName, JFrame prevFrame, int idUser) {
		super(prevFrame, idUser);
		this.e = e;
		this.emplacement = titre;
		this.tagName = tagName;
	}
	
	public void afficher() {
		parentNode = e.getElementsByTagName(tagName);
		
		if(parentNode.getLength() == 0) {
			Util.afficherErreur("Erreur lors de l'analyse de fichier XML\n"
					+ "Une balise <" + tagName + "> manquante.\n"
							+ "emplacement: " + this.emplacement);
			return;
		}
		
		// S'il n y a qu'une seule casier/tiroir c'est pas la peine d'afficher la liste
		if(parentNode.getLength() == 1) {
			Element element = (Element) parentNode.item(0);
			Node node = element.getElementsByTagName("nom").item(0);
			String nom = Util.getTextContent(node);
			btnClicked(parentNode, 0, nom, this.prevFrame);
			return;
		}
		
		this.setTitle("ESTO Magasin | " + emplacement);
		
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		deconnexion.setText("<<<Deconnexion");
		deconnexion.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				cacher();
				SeConnecter window = new SeConnecter();
				window.frame.setVisible(true);
			}
		});
		barreMenu.add(deconnexion);
		barreMenu.add(Box.createRigidArea(new Dimension(20,0)));

		if(isAdmin()) {
			JButton demandes = new JButton();
			demandes.setText("Demandes" + " (" + getNbreDemandes() + ")");
			demandes.addActionListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent e) {
					new Demandes();
				}
			});
			barreMenu.add(demandes);			
		}
		
		this.setJMenuBar(barreMenu);
				

		name.setText("Bienvenue " + getNomUtilisateur());
		titreLabel = new JLabel(emplacement);
		name.setFont(new Font("Tahoma", Font.BOLD, 15));
		titreLabel.setFont(new Font("Tahoma", Font.BOLD, 20));
		titreLabel.setAlignmentX(LEFT_ALIGNMENT);;
		JPanel panel = new JPanel();
		panel.setLayout(new BorderLayout());
		panel.add(name, BorderLayout.NORTH);
		panel.add(Box.createRigidArea(new Dimension(0, 20)));
		panel.add(titreLabel, BorderLayout.SOUTH);
		panel.setBorder(new EmptyBorder(new Insets(0, 70, 0, 0)));
		panel.setMaximumSize(new Dimension(700,0));
		
		this.getContentPane().add(panel);
		this.getContentPane().add(Box.createRigidArea(new Dimension(20, 0)));
		
		
		panel1.setBorder(new EmptyBorder(new Insets(50, 50, 50, 50)));
		panel1.setLayout(new GridLayout(2, 5, 30, 30));
		this.add(panel1);
		
		createRetourBtn();
		
		for(int i = 0; i < parentNode.getLength(); i++) {
			JButton btn = new JButton();
			btn.setFont(new Font("Tahoma", Font.PLAIN, 16));
			Element element = (Element) parentNode.item(i);
			String nom;
			Node node = element.getElementsByTagName("nom").item(0);
			nom = Util.getTextContent(node);
			btn.setText(nom);
			panel1.add(btn);
			final int index = i;
			final JFrame thisFrame = this;
			btn.addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent e) {
					btnClicked(parentNode, index, nom, thisFrame);
				}
			});
		}
		this.getContentPane().setLayout(new BoxLayout(this.getContentPane(), BoxLayout.Y_AXIS));
		int width = 800;
		int height = 497;
		int x = 100;
		int y = 100;
		if(parentNode.getLength() > 10) {
			width = 1300;
			height = 745;
			x = y = 0;
			panel1.setLayout(new GridLayout(5, 5, 30, 30));
		}
		this.setBounds(x, y, width, height);
		this.setVisible(true);
	}
	
	public String getNomUtilisateur() {
		ResultSet rs = DB.executeQuery("SELECT prenom, nom FROM utilisateurs WHERE id=" + idUser);
		try {
			rs.next();
			return (rs.getString(1) + " " + rs.getString(2));
		} catch (SQLException e1) {
			e1.printStackTrace();
			return "";
		}
	}
	
	public String getNbreDemandes() {
		ResultSet rs = DB.executeQuery("SELECT COUNT(id) FROM utilisateurs WHERE valide!=1");
		try {
			rs.next();
			return rs.getString(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		}
	}
	
	
	Element e;
	String emplacement;
	String tagName;
	
	JPanel panel1 = new JPanel();
	JMenuBar barreMenu = new JMenuBar();
	JButton deconnexion = new JButton();
	JLabel titreLabel;
	NodeList parentNode;
	JLabel name = new JLabel();

	public abstract void btnClicked(NodeList Node, int index, String nom, JFrame previousFrame);

}
