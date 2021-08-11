package stage_00;
import javax.swing.JTextField;

public final class TextField {
	/**
	 * @wbp.factory
	 */
	public static JTextField createJTextField() {
		JTextField textField = new JTextField();
		textField.setBounds(134, 412, 124, 19);
		textField.setColumns(10);
		return textField;
	}
}