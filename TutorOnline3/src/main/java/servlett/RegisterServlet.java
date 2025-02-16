/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlett;

import database.Users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
public class RegisterServlet extends HttpServlet {

    @PersistenceUnit(unitName = "com.mycompany_TutorOnline3_war_1.0-SNAPSHOTPU")

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
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("com.mycompany_TutorOnline3_war_1.0-SNAPSHOTPU");
        EntityManager em = emf.createEntityManager();
        //Copying all the input parameters in to local variables
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        String fname = request.getParameter("Fname");
        String lname = request.getParameter("Lname");
        String email = request.getParameter("Email");

        if (username != null) {
            Users user = em.find(Users.class, username);
            
            if (user == null) {
                Users registerUser = new Users();

                //Using Java Beans - An easiest way to play with group of related data
                registerUser.setUsername(username);
                registerUser.setPassword(password);
                registerUser.setFname(fname);
                registerUser.setLname(lname);
                registerUser.setEmail(email);

                em.getTransaction().begin();
                em.persist(registerUser);
                em.getTransaction().commit();
                request.getRequestDispatcher("/Login.jsp").forward(request, response);
            }

        }
        request.getRequestDispatcher("/Register.jsp").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
