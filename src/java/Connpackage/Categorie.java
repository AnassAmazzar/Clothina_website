/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connpackage;
//MT5

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author 
 */
public class Categorie implements Serializable{
    private int idcategorie;
    private String Disiniation;
    private Date Datecategorie;



    public Categorie(String Disiniation) {
        super();
        this.Disiniation = Disiniation;
    }

    public Categorie() {
        super();
    }
    
    public int getidcategorie(){
        return idcategorie;
    }
    public void setidcategorie(int idcategorie){
        this.idcategorie = idcategorie;
    }
    public String getDisiniation(){
        return Disiniation;
    }
    public void setDisiniation(String Disiniation){
        this.Disiniation = Disiniation;
    }
    public Date getDatecategorie(){
        return Datecategorie;
    }
    public void setDatecategorie(Date Datecategorie){
        this.Datecategorie = Datecategorie;
    }
}
