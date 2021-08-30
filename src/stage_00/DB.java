package stage_00;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DB {
	static Statement stmt = null;
	
	public static void demarrer() {
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/X4XBfk81Qq","X4XBfk81Qq","mJ4yCE4kne");
//        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/esto_magasin","root","");
        	stmt = con.createStatement();
        } catch(ClassNotFoundException ex) {
        	Util.afficherErreur("Erreur lors de chargement de drive: " + ex.getMessage());
            System.exit(1);
        }
        catch(SQLException ex) {
        	Util.afficherErreur(ex.getMessage());
            System.exit(1);
        }
	}
	
	public static int executeUpdate(String req) {
		try {
			return stmt.executeUpdate(req);
		} catch (SQLException e) {
			Util.afficherErreur("Erreur lors de l'execution de la requete \n" + e.getMessage());
			return -1;
		}
	}
	
	public static ResultSet executeQuery(String req) {
		try {
			return stmt.executeQuery(req);
		} catch (SQLException e) {
			Util.afficherErreur("Erreur lors de l'execution de la commande SQL \n" + e.getMessage());
			return null;
		}
	}
}
