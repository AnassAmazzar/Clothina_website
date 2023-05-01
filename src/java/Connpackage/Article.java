/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connpackage;

/**
 *
 * @author 
 */
public class Article {
    private int IDART;
    private String ImageArt;
    private String TitreArt;
    private String DescriptionArt;
    private String SourceArt;
    
    public int getIDART(){
        return IDART;
    }
    public void setIDART(int IDART){
        this.IDART = IDART;
    }
    
    public String getImageArt(){
        return ImageArt;
    }
    public void setImageArt(String ImageArt){
        this.ImageArt = ImageArt;
    }
    
    public String getTitreArt(){
        return TitreArt;
    }
    public void setTitreArt(String TitreArt){
        this.TitreArt = TitreArt;
    }
    
    public String getDescriptionArt(){
        return DescriptionArt;
    }
    public void setDescriptionArt(String DescriptionArt){
        this.DescriptionArt = DescriptionArt;
    }
    
    public String getSourceArt(){
        return SourceArt;
    }
    public void setSourceArt(String SourceArt){
        this.SourceArt = SourceArt;
    }
}
