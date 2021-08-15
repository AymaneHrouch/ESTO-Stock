package stage_00;

import javax.swing.JFrame;

import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ListSousTiroirs extends List {

	public ListSousTiroirs(Element e, String titre, String tagName, JFrame prevFrame, int idUser) {
		super(e, titre, tagName, prevFrame, idUser);
	}

	@Override
	public void btnClicked(NodeList Node, int index, String nom, JFrame previousFrame) {
		Element nxtNode = (Element) Node.item(index);
		this.setVisible(false);
		Element table = (Element) nxtNode.getElementsByTagName("table").item(0);
		NodeList colonnes = (NodeList) table.getElementsByTagName("colonne");
		String arr[] = new String[colonnes.getLength()];
		
		for(int i=0; i<colonnes.getLength(); i++) {
			arr[i] = Util.getTextContent(colonnes.item(i));
		}
		
		Node nodeType = nxtNode.getElementsByTagName("type").item(0);
		String type = Util.getTextContent(nodeType);
		
		try {		
			String tableName = table.getElementsByTagName("nom").item(0).getTextContent();
			new Tableau(tableName, arr, this.emplacement + "/" + nom, previousFrame, this.idUser, type).afficher();
		} catch(NullPointerException ex) {
			Util.afficherErreur("Erreur lors de l'analyse de fichier XML, veuillez verifier le nom de la table pour"
					+ " l'emplacement " + this.emplacement + "/" + nom);
			Util.afficherInfo("Le logiciel va s'arreter");
			System.exit(1);
		}
	}
}
