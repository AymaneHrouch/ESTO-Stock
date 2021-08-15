package stage_00;

import javax.swing.UIManager;
import javax.swing.UIManager.LookAndFeelInfo;

public class Main {
	public static void main(String[] args) {
		// set Nimbus LAF
		try {
		    for (LookAndFeelInfo info : UIManager.getInstalledLookAndFeels()) {
		        if ("Nimbus".equals(info.getName())) {
		            UIManager.setLookAndFeel(info.getClassName());
		            break;
		        }
		    }
		} catch (Exception e) {}
		
		DB.demarrer();
		SeConnecter window = new SeConnecter();
		window.frame.setVisible(true);
	}
}