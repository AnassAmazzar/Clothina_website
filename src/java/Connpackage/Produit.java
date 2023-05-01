/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connpackage;

import java.util.Date;

/**
 *
 * @author 
 */
public class Produit {
    private int idProduit;
    private int idCateg;
    private String disiniation;
    private String marque;
    private int prix;
    private String discription;
    private int disponibilite;
    private Date DateProduit;
    private String ImageProduit;
    private Object ImageVadet;
    
    public int getIdProduit(){
        return idProduit;
    }
    public void setIdProduit(int idProduit){
        this.idProduit = idProduit;
    }
    
    public int getIdCateg(){
        return idCateg;
    }
    public void setIdCateg(int idCateg){
        this.idCateg = idCateg;
    }
    
    public String getDisiniation(){
        return disiniation;
    }
    public void setDisiniation(String disiniation){
        this.disiniation = disiniation;
    }
    
    public String getMarque(){
        return marque;
    }
    public void setMarque(String marque){
        this.marque = marque;
    }

    public int getPrix(){
        return prix;
    }
    public void setPrix(int prix){
        this.prix = prix;
    }
    
    public String getDiscription(){
        return discription;
    }
    public void setDiscription(String discription){
        this.discription = discription;
    }

    public int getDisponibilite(){
        return disponibilite;
    }
    public void setDisponibilite(int disponibilite){
        this.disponibilite = disponibilite;
    }
    
    public Date getDateProduit(){
        return DateProduit;
    }
    public void DateProduit(Date DateProduit){
        this.DateProduit = DateProduit;
    }

    public String getImageProduit(){
        return ImageProduit;
    }
    public void setImageProduit(String ImageProduit){
        this.ImageProduit = ImageProduit;
    }
    
    public Object getImageVadet(){
        return ImageVadet;
    }
    public void setImageVadet(Object ImageVadet){
        this.ImageVadet = ImageVadet;
    }
}
