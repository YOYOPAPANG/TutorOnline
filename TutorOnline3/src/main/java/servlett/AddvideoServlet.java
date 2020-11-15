/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlett;

import database.Subjects;
import database.Videos;
import java.io.IOException;
import java.io.PrintWriter;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
public class AddvideoServlet extends HttpServlet {

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

        String videoname = request.getParameter("VideoName");
        String videourl = request.getParameter("VideoURl");
        String subjectname = request.getParameter("Subjects_SubjectName");

        if (videoname != null) {
            Videos video = em.find(Videos.class, videoname);

            if (video == null) {
                Videos addVideo = new Videos();
                Subjects sub = new Subjects();

                addVideo.setVideoName(videoname);
                addVideo.setVideoURL(videourl);
                sub.setSubjectName(subjectname);
                addVideo.setSubjectsSubjectName(sub);

                em.getTransaction().begin();
                em.persist(addVideo);
                em.getTransaction().commit();
                request.getRequestDispatcher("Classroom.jsp").forward(request, response);
            }
        }
        request.getRequestDispatcher("AddVideo.jsp").forward(request, response);
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
