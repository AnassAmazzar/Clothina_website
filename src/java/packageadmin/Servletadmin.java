package packageadmin;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Connpackage.Admine;
//import Connpackage.NameClothina;
//import Connpackage.Noms;
//import athors.Utilisateur;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author anass
 */
//@WebServlet("/Servletadmin")
@WebServlet(urlPatterns = {"/Servletadmin"})
public class Servletadmin extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AdmineDao admineDao;

    public void init() {
        admineDao = new AdmineDao();
    }

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
        this.getServletContext().getRequestDispatcher("/admines/admines.jsp").forward(request, response);
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
            String op = request.getParameter("operation");
            String Email = request.getParameter("Email");
            String passwords = request.getParameter("passwords");
            if(op.equals("Logine")){
                System.out.println(op);
                try {
                    Admine admines = new Admine();
                    admines.setEmail(Email);
                    admines.setpasswords(passwords);        
                    if(admineDao.validate(admines)){
                        HttpSession session = request.getSession();
//                        HttpSession session = request.getSession();//.substring(0,5)
                        session.setAttribute("Nom", Email);
                        out.print(1);
                        
                //HttpSession session = request.getSession();
                // session.setAttribute("username",username);
                //this.getServletContext().getRequestDispatcher("/view/newjsp.jsp").forward(request, response);
//                this.getServletContext().getRequestDispatcher("/view/newjsp.jsp").forward(request, response);
//                request.getSession().setAttribute("Email", Email);
//                request.getSession().setAttribute("password", passwords);
//                request.getSession().setAttribute("message", message);
                //response.sendRedirect("html/pageTwo.html");
//                response.sendRedirect("jsp/printout.jsp");
//                response.sendRedirect("/Clothina/Servletdashboard");
                    }else if(admineDao.validate(admines)==false){
//                response.sendRedirect("admines/admines.jsp");
//                message="Email or passwords incorect";
//                String message = "Email or passwords incorect";
//                String message = request.getParameter("message");
//                message="Email or passwords incorect";
//                session.setAttribute("message", message);
//                request.setAttribute("errorMessage", "Invalid Email or Password");
//                request.getRequestDispatcher("admines/admines.jsp").forward(request, response);
                        System.out.println("ERREUR c'est commit");
                        out.print(0);
//                request.getSession().
//                response.sendRedirect("admines/admines.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
//                  getServletContext().getRequestDispatcher("/admines/admines.jsp").forward(request, response);
//                request.setAttribute("message", message);
//                response.sendRedirect("admines/admines.jsp");
//                System.out.println(message);
//		JOptionPane.showMessageDialog(null, "Your Login and/or your Passeword are Incorrects", "Error Message",JOptionPane.ERROR_MESSAGE);
                    }
                    else {
//                HttpSession session = request.getSession();
                        System.out.println("Vous n'avez pas le droit d'entrer");
//		JOptionPane.showMessageDialog(null, "Your Login and/or your Passeword are Incorrects", "Error Message",JOptionPane.ERROR_MESSAGE);
//                response.sendRedirect("admines/admines.jsp");
                        System.err.println("faild");
                        out.print(0);
                    }
//            this.getServletContext().getRequestDispatcher("/view/newjsp.jsp").forward(request, response);
//                RequestDispatcher dispatcher //
//            = this.getServletContext()//
//                    .getRequestDispatcher("/view/newjsp.jsp");
//response.sendRedirect("Login Faild");
//session.setAttribute("user", username);
//response.sendRedirect("login.jsp");
 //NameClothina tableNoms = new NameClothina();
            //tableNoms.ajouterUtilisateur(Admines);
            //request.setAttribute("Admines", tableNoms.recupererUtilisateurs());
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
            }
            }else if(op.equals("modifier")){
                System.out.println(op);
                if(request.getParameter("password").equals(request.getParameter("passwords"))){
                    Admine admine = new Admine();
                    admine.setNom_Admine(request.getParameter("nom"));
                    admine.setPrenom_Admine(request.getParameter("prenom"));
                    admine.setEmail(request.getParameter("Email"));
                    admine.setpasswords(request.getParameter("password"));
                    admine.setTelephone(request.getParameter("telephone"));
                    admineDao.Modif(admine);
//                out.print(1);
                    out.print(1);
                }else{
                    out.print(0);
                    System.out.println("Erreur");
                }
                
            }else if(op.equals("inscription")){
                HttpSession session = request.getSession();
                System.out.println(op);
                    Admine admines = new Admine();
                    admines.setNom_Admine(request.getParameter("I-nom"));
                    admines.setPrenom_Admine(request.getParameter("I-prenom"));
                    admines.setEmail(request.getParameter("I-email"));
                    admines.setpasswords(request.getParameter("I-password"));
                    admines.setTelephone(request.getParameter("I-telephone"));
                    admines.setSexe(request.getParameter("I-sexe"));
                    admineDao.Inscrip(admines);
                    session.setAttribute("Nom", request.getParameter("I-email"));
                    out.print(1);
                
            }else if(op.equals("logout")){
                HttpSession session = request.getSession();
                System.err.println(request.getParameter("logout"));
                session.invalidate();
                out.print(1);
            }
            
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
