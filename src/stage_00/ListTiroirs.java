package stage_00;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;

import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class ListTiroirs extends List {
	
	public ListTiroirs(Element e, String titre, String tagName, JFrame prevFrame, int idUser) {
		super(e, titre, tagName, prevFrame, idUser);
	}
	
	public void btnClicked(NodeList Node, int index, String nom, JFrame previousFrame) {
		Element nxtNode = (Element) Node.item(index);
		this.setVisible(false);
		List window = new ListSubTiroirs(nxtNode, this.emplacement + "/" + nom, "sub_tiroir", previousFrame, idUser);
		window.afficher();
	}
}
