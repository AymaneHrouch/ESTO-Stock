package stage_00;

import javax.swing.JOptionPane;

import org.w3c.dom.Node;

public class Util {
    public static void afficherErreur(String message)
    {
        JOptionPane.showMessageDialog(null, message, "Erreur!", JOptionPane.ERROR_MESSAGE);
    } 
    
    public static void afficherInfo(String message) {
    	JOptionPane.showMessageDialog(null, message, "Alert!", JOptionPane.INFORMATION_MESSAGE);
    }
    
    public static void afficherInfo(String message, String titre) {
    	JOptionPane.showMessageDialog(null, message, titre, JOptionPane.INFORMATION_MESSAGE);
    }
    
    public static String getTextContent(Node node) {
    	return (node != null) ? node.getTextContent() : ""; 
    }
}
