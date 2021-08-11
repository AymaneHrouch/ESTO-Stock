package stage_00;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.ResultSet;
import java.util.Arrays;

import javax.swing.table.DefaultTableModel;

public class Ajouter extends AjouterModifier {
	String requete = "SELECT * FROM " + tableName + " ORDER BY id DESC LIMIT 1";

	public Ajouter(DefaultTableModel model, String tableName, String[] th) {
		super(model, tableName, th);
		strLabel = "Ajouter";
		forStart = 1;
	};
	
	public void btnClicked() {
		String[] values = getValues();
		for(int i=0; i<values.length; i++) {
			values[i] = "'" + values[i] + "'";
		}
		
		String colonnes = String.join(", ", Arrays.copyOfRange(th, 1, th.length));
		String valuesStr = String.join(", ", values);
		String sql = "INSERT INTO " + tableName + "(" + colonnes + ") VALUES("
				+ valuesStr
				+ ")";
		if(DB.executeUpdate(sql) == -1) return;
		ajouterLigne();
		Util.afficherInfo("Ajoute avec succes!");
		viderTF();
	}
	
	private void viderTF() {
		for(int i=0; i<jTextFields.length; i++) {
			jTextFields[i].setText("");
		}
	}
	
	private void ajouterLigne() {
		try {
			ResultSet rs = DB.executeQuery(requete);
			rs.next();
	        Object[] ligne = new Object[th.length];
	        for(int i=0; i < th.length; i++) {
	        	ligne[i] = rs.getString(i+1);
			}
	        model.addRow(ligne);
		} catch (Exception ex) {
			Util.afficherErreur("Erreur lors de l'execution de la requete SQL: " + ex.getMessage());
		}
	}

	@Override
	public void remplireTextFields() {}

}
