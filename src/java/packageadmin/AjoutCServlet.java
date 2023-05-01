/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packageadmin;

import Connpackage.Admine;
import Connpackage.ConnClothina;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author anass
 */
public class AjoutCServlet extends HttpServlet {
//     UtilisateurDao utilisateur;
//    @Override
//    public void init(){
//        utilisateur = new UtilisateurDao();
//}
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/admines/AjouterCient.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Admine util = new Admine();
        util.setNom_Admine(request.getParameter("nom"));
        util.setPrenom_Admine(request.getParameter("prenom"));
        util.setEmail(request.getParameter("email"));
        util.setpasswords(request.getParameter("password"));
        util.setTelephone(request.getParameter("telephone"));
        util.setSexe(request.getParameter("sexe"));
        util.setProfile(request.getParameter("profiles"));
        UtilisateurDao utilisateur = new UtilisateurDao();
        System.out.println("hello Anass");
        utilisateur.Ajouter(util);
        out.print(1);
//        System.out.println(utilisateur.Ajouter(util));
//        if(utilisateur.Ajouter(util)!=null){
//            out.print(1);
//        }else{
//            out.print(0);
//        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
