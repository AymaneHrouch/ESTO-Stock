package stage_00;

import javax.swing.JFrame;
import javax.swing.JLabel;
import net.miginfocom.swing.MigLayout;
import javax.swing.JButton;
import java.awt.Font;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JPasswordField;

public class Sinscrire {

	JFrame frmSinscrire;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JButton btnNewButton;
	private JButton btnSinscrire;
	private JLabel lblNewLabel_5;
	private JLabel lblNewLabel_6;
	private JPasswordField passwordField;
	private JPasswordField passwordField_1;

	/**
	 * Create the application.
	 */
	public Sinscrire() {
		initialize();
	}

	public void annuler() {
		frmSinscrire.dispose();
		new SeConnecter().frame.setVisible(true);
	}
	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frmSinscrire = new JFrame();
		frmSinscrire.setTitle("ESTO Magasin | S'inscrire");
		frmSinscrire.getContentPane().setFont(new Font("Cambria", Font.BOLD, 17));
		frmSinscrire.setBounds(100, 100, 380, 360);
		frmSinscrire.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frmSinscrire.getContentPane().setLayout(new MigLayout("", "[107px][146px,grow]", "[][36px][36px][36px][29px][36px][27px][][][]"));
		
		lblNewLabel_6 = new JLabel("S'inscrire");
		lblNewLabel_6.setFont(new Font("Constantia", Font.PLAIN, 30));
		lblNewLabel_6.setVerticalAlignment(SwingConstants.BOTTOM);
		frmSinscrire.getContentPane().add(lblNewLabel_6, "cell 0 0 2 1");
		
		JLabel lblNewLabel = new JLabel("Prénom");
		lblNewLabel.setFont(new Font("Caladea", Font.BOLD, 14));
		frmSinscrire.getContentPane().add(lblNewLabel, "cell 0 1,grow");
		
		JLabel lblNewLabel_1 = new JLabel("Nom");
		lblNewLabel_1.setFont(new Font("Caladea", Font.BOLD, 14));
		frmSinscrire.getContentPane().add(lblNewLabel_1, "cell 0 2,grow");
		
		JLabel lblNewLabel_2 = new JLabel("Email");
		lblNewLabel_2.setFont(new Font("Caladea", Font.BOLD, 14));
		frmSinscrire.getContentPane().add(lblNewLabel_2, "flowy,cell 0 3,grow");
		
		lblNewLabel_5 = new JLabel("Mot De Passe");
		lblNewLabel_5.setFont(new Font("Caladea", Font.BOLD, 14));
		frmSinscrire.getContentPane().add(lblNewLabel_5, "flowx,cell 0 4,alignx left");
		
		passwordField = new JPasswordField();
		frmSinscrire.getContentPane().add(passwordField, "cell 1 4,growx");
		
		JLabel lblNewLabel_4 = new JLabel("Retaper");
		lblNewLabel_4.setFont(new Font("Caladea", Font.BOLD, 14));
		frmSinscrire.getContentPane().add(lblNewLabel_4, "cell 0 5,alignx left,aligny baseline");
		
		textField = new JTextField();
		frmSinscrire.getContentPane().add(textField, "cell 1 1,growx,aligny center");
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setColumns(10);
		frmSinscrire.getContentPane().add(textField_1, "cell 1 2,growx,aligny center");
		
		textField_2 = new JTextField();
		textField_2.setColumns(10);
		frmSinscrire.getContentPane().add(textField_2, "cell 1 3,growx,aligny center");
		
		btnNewButton = new JButton("Annuler");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				annuler();
			}
		});
		
		passwordField_1 = new JPasswordField();
		frmSinscrire.getContentPane().add(passwordField_1, "cell 1 5,growx");
		btnNewButton.setFont(new Font("Caladea", Font.BOLD, 14));
		frmSinscrire.getContentPane().add(btnNewButton, "cell 0 7,growx,aligny top");
		
		btnSinscrire = new JButton("S'inscrire");
		btnSinscrire.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String prenom, nom, email, mdp, retaper, sql;
				prenom = textField.getText();
				nom = textField_1.getText();
				email = textField_2.getText();
				mdp = new String(passwordField.getPassword());
				retaper = new String(passwordField_1.getPassword());
				if(prenom.isEmpty() || nom.isEmpty() || email.isEmpty() || mdp.isEmpty() || retaper.isEmpty()) {
					Util.afficherInfo("Veuillez remplir tous les champs.", "Données incomplétes");
					return;
				}
				if(!mdp.equals(retaper)) {
					Util.afficherErreur("Les mots de passe ne sont pas identiques.");
					return;
				}
				else {
					sql = "INSERT INTO utilisateurs(prenom, nom, email, mdp) VALUES('"
							+ prenom + "','"
							+ nom + "','"
							+ email + "','"
							+ mdp + "'"
							+ ")";
					int res = DB.executeUpdate(sql);
					if(res == -1) return;
					Util.afficherInfo("Vous avez inscrive avec succees, un moderateur va verifier votre demande et valider");
					annuler();
				}
			}
		});
		btnSinscrire.setFont(new Font("Caladea", Font.BOLD, 14));
		frmSinscrire.getContentPane().add(btnSinscrire, "cell 1 7,alignx right,aligny top");
	}
}
