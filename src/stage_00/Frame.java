package stage_00;

import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class Frame extends JFrame {
	JFrame prevFrame;
	int idUser;
	JPanel panel2 = new JPanel();

	Frame() {
		super();
	}
	
	public Frame(int idUser) {
		this.idUser = idUser;
	}
	
	public Frame(JFrame prevFrame, int idUser) {
		this.prevFrame = prevFrame;
		this.idUser = idUser;
	}
	
	public void cacher() {
		this.dispose();
	}
	
	public void retourClicked() {
		cacher();
		prevFrame.setVisible(true);
	}
	
	public void createRetourBtn() {
		JButton retourBtn = new JButton();
		retourBtn.setText("<<Retour");
		retourBtn.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				retourClicked();
			}
		});
		panel2.setMaximumSize(new Dimension(100,0));
		panel2.setLayout(new FlowLayout());
		panel2.add(retourBtn);
		this.add(panel2);
	}
	
	public Boolean isAdmin() {
		ResultSet rs = DB.executeQuery("SELECT admin FROM utilisateurs WHERE id=" + idUser);
		try {
			rs.next();
			if(rs.getString(1).equals("1")) {
				return true;
			} else return false;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}
