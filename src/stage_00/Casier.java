package stage_00;

import javax.swing.JFrame;

public class Casier extends JFrame {
	public Casier(String tiroirs[]) {
		this.setBounds(100,100,500,600);
		this.setVisible(true);
		System.out.println(tiroirs.length);
	}
}
