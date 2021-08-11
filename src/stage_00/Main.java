package stage_00;

import java.awt.Font;
import java.util.Enumeration;

import javax.swing.UIManager;
import javax.swing.UIManager.*;


public class Main {
	public static void main(String[] args) {
		try {
		    for (LookAndFeelInfo info : UIManager.getInstalledLookAndFeels()) {
		        if ("Nimbus".equals(info.getName())) {
		            UIManager.setLookAndFeel(info.getClassName());
		            break;
		        }
		    }
		} catch (Exception e) {
		    // If Nimbus is not available, you can set the GUI to another look and feel.
		}
		
		DB.demarrer();
//		new Tableau("utilisateurs", new String[] {"id","prenom", "nom"}, "").afficher();
		SeConnecter window = new SeConnecter();
		window.frame.setVisible(true);
//		Testing tst = new Testing();
		String[] hoho = {"hi there", "ayman"};
//		new Casier(hoho);
//		new XMLdirtyhands();
//		new Demandes();
//		new Tableau(hoho);
//		new Tiroir(hoho);
//		List list = new List();
//		list.afficher();
		
		
	}
	public static void setUIFont (javax.swing.plaf.FontUIResource f){
		Enumeration<Object> keys = UIManager.getDefaults().keys();
		while (keys.hasMoreElements()) {
			Object key = keys.nextElement();
			Object value = UIManager.get (key);
			if (value instanceof javax.swing.plaf.FontUIResource)
				UIManager.put (key, f);
		}
	} 
}



