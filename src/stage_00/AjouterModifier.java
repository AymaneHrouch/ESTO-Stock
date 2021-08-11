package stage_00;

import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;

public class AjouterModifier extends JFrame {
	String strLabel = "Ajouter";
	int forStart = 0;
	
	JPanel panel = new JPanel();
	JLabel label = new JLabel();
	JButton btnAjouterModifier = new JButton();
	JButton btnAnnuler = new JButton("Annuler");
	
	public AjouterModifier(DefaultTableModel model, String tableName, String[] th) {
		ecouterBoutons();
		label.setText(strLabel);
		btnAjouterModifier.setText(strLabel);
		
		label.setFont(new Font("Tahoma", Font.CENTER_BASELINE, 20));
		panel.add(label);
		panel.setMaximumSize(new Dimension(350,40));
		this.add(panel);
		
		for(int i=forStart; i<th.length; i++) {
			JPanel panel1 = new JPanel();
			JLabel label1 = new JLabel(th[i]);
			JTextField textField = new JTextField();
			panel1.add(label1);
			panel1.add(textField);
			
			panel1.setLayout(new GridLayout());
			panel1.setBorder(new EmptyBorder(new Insets(10,10,10,10)));
			panel1.setMaximumSize(new Dimension(350,50));
			this.add(panel1);
		}
		
		JPanel panel2 = new JPanel();
		panel2.add(btnAjouterModifier);
		panel2.add(btnAnnuler);
		panel2.setLayout(new FlowLayout());
		this.add(panel2);
		
		this.setLayout(new BoxLayout(this.getContentPane(), BoxLayout.Y_AXIS));
		this.setBounds(100,100,350,563);
		this.setVisible(true);
	}
	
	private void ecouterBoutons() {
		btnAnnuler.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
                annuler();
			}
		});
	}
	
	private void annuler() {
		this.dispose();
	}
}
