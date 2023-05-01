/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connpackage;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author 
 * 
 *  implements Serializable
 */
public class Admine{
    private static final long serialVersionUID = 1L;
    private int Id_Admine;
    private String Nom_Admine;
    private String Prenom_Admine;
    private String Email;
    private String passwords;
    private String Telephone;
    private String Sexe;
    private String Profile;
    private String Image;
    private String message;
    private Date date_creation;
    
    public int getId_Admine(){
        return Id_Admine;
    }
    public void setId_Admine(int Id_Admine){
        this.Id_Admine = Id_Admine;
    }
    public String getNom_Admine(){
        return Nom_Admine;
    }
    public void setNom_Admine(String Nom_Admine){
        this.Nom_Admine = Nom_Admine;
    }
    public String getPrenom_Admine(){
        return Prenom_Admine;
    }
    public void setPrenom_Admine(String Prenom_Admine){
        this.Prenom_Admine = Prenom_Admine;
    }
    public String getEmail(){
        return Email;
    }
    public void setEmail(String Email){
        this.Email = Email;
    }
    public String getpasswords(){
        return passwords;
    }
    public void setpasswords(String passwords){
        this.passwords = passwords;
    }
    public String getTelephone(){
        return Telephone;
    }
    public void setTelephone(String Telephone){
        this.Telephone = Telephone;
    }
    public String getSexe(){
        return Sexe;
    }
    public void setSexe(String Sexe){
        this.Sexe = Sexe;
    }
    public String getProfile(){
        return Profile;
    }
    public void setProfile(String Profile){
        this.Profile = Profile;
    }
    public String getImage(){
        return Image;
    }
    public void setImage(String Image){
        this.Image = Image;
    }
    public Date getdate_creation(){
        return date_creation;
    }
    public void setdate_creation(Date date_creation){
        this.date_creation = date_creation;
    }
    
//    public Admine(){}
//    
//    public Admine(int Id_Admine, String Nom_Admine, String Prenom_Admine, String Email, String passwords, String Telephone, String Sexe, String Profile, String Image, Date date_creation){
//        this.Id_Admine = Id_Admine;
//        this.Nom_Admine = Nom_Admine;
//        this.Prenom_Admine = Prenom_Admine;
//        this.Email = Email;
//        this.passwords = passwords;
//        this.Telephone = Telephone;
//        this.Sexe = Sexe;
//        this.Profile = Profile;
//        this.Image = Image;
//        this.date_creation = date_creation;
//    }
    
//    @Override
//    public String toString(){
//        return null;  
//}
//    public Admine rechercherConseiller(String Email, String passwords) throws SQLException{
//        R = connClothina.getConnn().createStatement().executeQuery("select * from MyAdmine where Email='"
//                +Email+"' and passwords='"+passwords+"'");
//        if(R.next()){
//            Admine  C = new Admine(R.getInt(1), R.getString(2), R.getString(3), R.getString(4), R.getString(5), R.getString(6), R.getString(7), R.getString(8), R.getString(9), R.getDate(10));
//            return C;
//        }else{
//            return null;
//        }
//    }
//public String getMessage(){
//        return message;
//    }
//public void setMessage(String message) {
//    this.message = message;
////        message = "Email or passwords incorect";
//    }
}
