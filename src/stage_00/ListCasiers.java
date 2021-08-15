package stage_00;

import javax.swing.JFrame;

import org.w3c.dom.Element;
import org.w3c.dom.NodeList;



public class ListCasiers extends List {
	public ListCasiers(Element e, String titre, String tagName, int idUser) {
		super(e, titre, tagName, idUser);
	}

	public void btnClicked(NodeList Node, int index, String nom, JFrame previousFrame) {
		Element nxtNode = (Element) Node.item(index);
		this.setVisible(false);
		List window = new ListTiroirs(nxtNode, nom, "tiroir", this, idUser);
		window.afficher();
	}
	
	public void createRetourBtn() {};
	public void retourClicked() {};

}