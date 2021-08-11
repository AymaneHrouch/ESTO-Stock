package stage_00;

import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

public class Testing extends JFrame {
	JButton btn = new JButton();
	JButton btn1 = new JButton();
	JPanel panel = new JPanel();
	
	public Testing() {
		ArrayList<JButton> pls = new ArrayList<JButton>();
		for(int i=0; i<3; i++) {
			pls.add(new JButton());
			pls.get(i).setText("btn " + i);
			pls.get(i).addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent e) {
					Util.afficherInfo("hihiihihi i am number ");
					
				}
			});
			panel.add(pls.get(i));
			panel.add(Box.createRigidArea(new Dimension(0, 20)));
		}
		btn.setText("i am button 0");
		btn1.setText("i am button 1");
		panel.add(btn);
		panel.add(Box.createRigidArea(new Dimension(0, 20)));
		panel.add(btn1);
		panel.setBorder(new EmptyBorder(new Insets(50, 50, 0, 0)));
		panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
		this.setBounds(0,0,300,300);
		this.add(panel);
		this.setVisible(true);
	}
}
