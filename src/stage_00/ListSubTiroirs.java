package stage_00;

import javax.swing.JFrame;

import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ListSubTiroirs extends List {

	public ListSubTiroirs(Element e, String titre, String tagName, JFrame prevFrame, int idUser) {
		super(e, titre, tagName, prevFrame, idUser);
	}

	@Override
	public void btnClicked(NodeList Node, int index, String nom, JFrame previousFrame) {
		this.setVisible(false);
		Element nxtNode = (Element) Node.item(index);
		Element table = (Element) nxtNode.getElementsByTagName("table").item(0);
		NodeList colonnes = (NodeList) table.getElementsByTagName("colonne");
		String arr[] = new String[colonnes.getLength()];
		for(int i=0; i<colonnes.getLength(); i++) {
			arr[i] = colonnes.item(i).getTextContent();
		}
		String type = nxtNode.getElementsByTagName("type").item(0).getTextContent();
		new Tableau("souris", arr, this.emplacement + "/" + nom, previousFrame, this.idUser, type).afficher();
	}
}
