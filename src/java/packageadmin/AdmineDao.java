package packageadmin;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Connpackage.ConnClothina;
import Connpackage.Admine;
//import com.sun.rowset.CachedRowSetImpl;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 
 */
public class AdmineDao {
    Connection con=ConnClothina.getConn();
    ResultSet R=null;
    PreparedStatement preparedStatemente=null;
    

//     private void loadDatabase() {
//        // Chargement du driver
//        try {
//            Class.forName("oracle.jdbc.driver.OracleDriver");
//        } catch (ClassNotFoundException e) {
//        }
//
//        try {
//            connexion = DriverManager.getConnection("Jdbc:oracle:thin:@localhost:1521/orcl","Clothina","1959");
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//    }
    
    public boolean validate(Admine admines) throws ClassNotFoundException{
        boolean status = false;
        String req = "select * from MyAdmine where Email = ? and passwords = ?";
        try{
            preparedStatemente = con.prepareStatement(req);
            preparedStatemente.setString(1, admines.getEmail());
            preparedStatemente.setString(2, admines.getpasswords());

            R=preparedStatemente.executeQuery();

            while(R.next()){
                System.out.println("Hello");
                System.out.println("Email :"+R.getString("Email"));
                System.out.println("MDP :"+R.getString("passwords"));
                status=true;
//                return status=R.next();
            }
//            preparedStatemente.close();
//            if (rs.next()) {
//                System.out.println("Au moins un résultat trouvé");
//                status=true;
//            } else {
//                System.out.println("Aucun résultat");
//            }
//            while(R.next()==false){
//                System.out.println("Ahmed");
//                System.out.println("bien jouer"+ R.getObject(3));
//                System.out.println("bien jouer"+ R.getObject(4));
//                status=true;
//            }
//            System.out.println("whay :"+ R.getString("Email"));
//            if(preparedStatemente!=null)
//            {
//                preparedStatemente.close();
//            }
//            if(con!=null)
//            {
//                con.close();
//            }

        } catch (SQLException ex) {
            System.out.println("Test :"+ex);
            System.out.println("pas de chance");
            status=false;
        }
//        finally{
//            finally {
//              try {
//                R.close();
//                preparedStatemente.close();
//                con.close();
//              } catch (Exception e) {
//                e.printStackTrace();
//              }
//        }
        
//        Connection conn = connClothina.getConnn();
//        ResultSet R;
//        boolean status = false;
//        Class.forName("oracle.jdbc.driver.OracleDriver");
//        System.out.println("1");
//        try{
//            PreparedStatement preparedStatement = conn.prepareStatement("select * from MyAdmine where Email = ? and passwords = ?");
//            preparedStatement.setString(1, admine.getEmail());
//            preparedStatement.setString(2, admine.getpasswords());
//            //System.out.println(preparedStatement);
//            R= preparedStatement.executeQuery();
//            
//            while (R.next()) {
//                String id = R.getString(1);
//                String Email = R.getString(2);
//                System.out.println("IDa: " + id + ", Email: " + Email);
//                //return true;
//            }
//            if (R.next()) {
////                R= preparedStatement.executeQuery();
//                return true;
//            }
//            while(R.next()){
//                R.getString("Email");
//                R.getString("passwords");
//
//                R=preparedStatement.executeQuery();
//            }
            
            //System.out.println(R.getString(admine.getEmail()));
            //status = R.next();
//        } catch (SQLException ex) {
//            Logger.getLogger(AdmineDao.class.getName()).log(Level.SEVERE, null, ex);
//                ex.printStackTrace();
//        }
//        System.out.println(status);
        return status;
    }
    public Admine Modif(Admine admine){
        String reqq = "UPDATE MyAdmine SET Nom_Admine=?, Prenom_Admine=?, Email=?, passwords=?, Telephone=? WHERE Email=?";
        try {
            preparedStatemente = con.prepareStatement(reqq);
            preparedStatemente.setString(1, admine.getNom_Admine());
            preparedStatemente.setString(2, admine.getPrenom_Admine());
            preparedStatemente.setString(3, admine.getEmail());
            preparedStatemente.setString(4, admine.getpasswords());
            preparedStatemente.setString(5, admine.getTelephone());
            preparedStatemente.setString(6, admine.getEmail());
            preparedStatemente.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return admine;
        
    }
    public Admine Inscrip(Admine admines){
        String reqs = "Insert into MyAdmine values(S_MYTABLE.nextval,?,?,?,?,?,?,'Client','AdminLogo.png',sysdate)";
        try {
            preparedStatemente = con.prepareStatement(reqs);
            preparedStatemente.setString(1, admines.getNom_Admine());
            preparedStatemente.setString(2, admines.getPrenom_Admine());
            preparedStatemente.setString(3, admines.getEmail());
            preparedStatemente.setString(4, admines.getpasswords());
            preparedStatemente.setString(5, admines.getTelephone());
            preparedStatemente.setString(6, admines.getSexe());
            preparedStatemente.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return admines;
        
    }
private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
    
}
