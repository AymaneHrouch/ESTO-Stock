package stage_00;

import javax.swing.table.DefaultTableModel;

public class Modifier extends AjouterModifier {
	
	int row;

	public Modifier(DefaultTableModel model, String tableName, String[] th, int row) {
		super(model, tableName, th);
		this.row = row;
		strLabel = "Modifier";
		forStart = 0;
	}

	@Override
	public void btnClicked() {
		String[] values = getValues();
		String sql = "UPDATE " + tableName + " SET ";
		for(int i=1; i<values.length; i++) {
			sql += th[i] + "='" + values[i] + "'";
			if(i<values.length-1) {
				sql += ", "; // pour éviter (UPDATE tableName column=1, WHERE condition)
			} else {
				sql += " ";
			}
		}
		sql += "WHERE id=" + values[0];
		Util.afficherInfo(sql);
		if(DB.executeUpdate(sql) == -1) return;
		modifierLigne(values);
	}

	@Override
	public void remplireTextFields() {
		for(int i=forStart; i<th.length; i++) {
			jTextFields[i].setText((String) model.getValueAt(row, i));
		}		
	}

	private void modifierLigne(String[] values) {
		for(int i=1; i<th.length; i++) {
			model.setValueAt(values[i], row, i);
		}
	}
}
