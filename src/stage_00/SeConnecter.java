package stage_00;

import javax.swing.JFrame;
import net.miginfocom.swing.MigLayout;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.SwingConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JButton;
import java.awt.Color;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.awt.Cursor;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;

public class SeConnecter {

	JFrame frame;
	private JTextField textField;
	private JPasswordField passwordField;
	private final JLabel lblNewLabel = new JLabel("Vous n'avez pas de compte?");

	/**
	 * Create the application.
	 */
	public SeConnecter() {
		initialize();
	}

	public void action() {
        String loginText;
        String pwdText;
        loginText = textField.getText();
        pwdText = new String(passwordField.getPassword());
        if(loginText.isEmpty() || pwdText.isEmpty()) {
        	Util.afficherInfo("Veuillez ecrire le mot de passe et l'email", "Donnees incomplete!");
        	return;
        }
        try {
        	ResultSet rs = DB.executeQuery("select id, email, mdp, admin, valide from utilisateurs"); 
        	while(rs.next()){
        		if(loginText.equals(rs.getString(2)) && pwdText.equals(rs.getString(3))) {
                    //Util.afficherInfo("Connecté avec succés!");
        			if(Integer.parseInt(rs.getString(5)) == 1) {
        				frame.dispose();
        				int idUser = Integer.parseInt(rs.getString(1));
        				DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        				DocumentBuilder builder = factory.newDocumentBuilder();
        				Document doc = builder.parse("data.xml");
        				Element magasin = (Element) doc.getElementsByTagName("magasin").item(0);
        				List window = new ListCasiers(magasin, "List Des Casiers", "casier", idUser);
        				window.afficher();        				
        			}
        			else {
        				Util.afficherInfo("Ce compte n'est pas encore valide.");
        			}
        			return;
        		}
        	}
        	Util.afficherInfo("Login ou mot de passe Invalide.");
        }
        catch(SQLException ex) {
        	Util.afficherErreur("Erreur lors de connexion a la BDD de drive: " + ex.getMessage());
            System.exit(1);
        } catch (SAXException e) {
			// TODO Auto-generated catch block
			Util.afficherErreur(e.getMessage());
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			Util.afficherErreur(e.getMessage());
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			Util.afficherErreur(e.getMessage());
			e.printStackTrace();
		}
	}
	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setTitle("ESTO Magasin | Se Connecter");
		frame.setBounds(100, 100, 498, 242);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(new MigLayout("", "[][][grow]", "[][][][][][][][][][]"));
		
		JLabel lblNewLabel_6 = new JLabel("Se Connecter");
		lblNewLabel_6.setVerticalAlignment(SwingConstants.BOTTOM);
		lblNewLabel_6.setFont(new Font("Constantia", Font.PLAIN, 30));
		frame.getContentPane().add(lblNewLabel_6, "cell 0 0 3 2");
		
		JLabel lblEmail = new JLabel("Nom d'Utilisateur");
		lblEmail.setFont(new Font("Caladea", Font.BOLD, 14));
		frame.getContentPane().add(lblEmail, "cell 0 2");
		
		textField = new JTextField();
		textField.setFont(new Font("Tahoma", Font.PLAIN, 12));
		textField.addKeyListener(new KeyAdapter() {
			public void keyPressed(KeyEvent e) {
				if(e.getKeyCode() == 10) {
					action();
				}
			}
		});
		frame.getContentPane().add(textField, "cell 2 2,growx");
		textField.setColumns(10);
		
		JLabel lblMotDePasse = new JLabel("Mot De Passe");
		lblMotDePasse.setFont(new Font("Caladea", Font.BOLD, 14));
		frame.getContentPane().add(lblMotDePasse, "cell 0 4");
		
		passwordField = new JPasswordField();
		passwordField.setFont(new Font("Tahoma", Font.PLAIN, 12));
		passwordField.addKeyListener(new KeyAdapter() {
			@Override
			public void keyPressed(KeyEvent e) {
				if(e.getKeyCode() == 10) {
					action();
				}
			}
		});
		frame.getContentPane().add(passwordField, "cell 2 4,growx");
		
		JButton btnSeConnecter = new JButton("Se Connecter");
		btnSeConnecter.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				action();
		}
		});
		
		btnSeConnecter.setFont(new Font("Caladea", Font.BOLD, 14));
		frame.getContentPane().add(btnSeConnecter, "cell 0 6");
		frame.getContentPane().add(lblNewLabel, "cell 0 7 2 1");
		
		JLabel lblNewLabel_1 = new JLabel("Inscrivez vous!");
		lblNewLabel_1.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				frame.dispose();
				new Sinscrire().frmSinscrire.setVisible(true);
			}
		});
		lblNewLabel_1.setForeground(Color.RED);
		lblNewLabel_1.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		frame.getContentPane().add(lblNewLabel_1, "cell 2 7");
	}

}
