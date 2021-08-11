package stage_00;

import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class XMLdirtyhands {
	  private static final String FILENAME = "data.xml";
	  public XMLdirtyhands() {
	      DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	      try {
			DocumentBuilder builder = factory.newDocumentBuilder();
			try {
				Document doc = builder.parse("data.xml");
				Element magasin = (Element) doc.getElementsByTagName("magasin").item(0);
//				System.out.println("on va créer " + casiers.getLength() + " casiers");
//				Element casier = (Element) casiers.item(0);
				List window = new ListCasiers(magasin, "List Des Casiers", "casier", 1);
				window.afficher();
//				System.out.println("casiiiier = " + casier.getTagName());
//				NodeList tiroirs = casier.getElementsByTagName("tiroir");
//				Element tiroir = (Element) tiroirs.item(0);
//				NodeList sub_tiroirs = tiroir.getElementsByTagName("sub_tiroir");
//				Element sub_tiroir = (Element) sub_tiroirs.item(0);
//				System.out.println(sub_tiroir.getElementsByTagName("nom").item(0).getTextContent());
			} catch (SAXException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  }
}
