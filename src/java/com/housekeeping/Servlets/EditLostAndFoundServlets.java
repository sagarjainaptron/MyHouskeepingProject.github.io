/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.housekeeping.Servlets;

import com.housekeeping.dao.LostAndFoundDao;
import com.housekeeping.entities.LostAndFound;
import com.housekeeping.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp world
 */
@MultipartConfig
public class EditLostAndFoundServlets extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
             String ddate = request.getParameter("datepicker1");
             SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
            try {
                Date sdate =  sdf.parse(ddate);
                
                  String lfcb=request.getParameter("lfcolby");
                 String lfadd=request.getParameter("lfaddress");
                int lfsn=Integer.parseInt(request.getParameter("lfsernum"));
                
                String lfchecked=request.getParameter("lfchecked");
                
                 LostAndFound laf=new LostAndFound(lfcb, lfadd, sdate, lfsn,lfchecked);
            
             LostAndFoundDao deskDao=new LostAndFoundDao(ConnectionProvider.getConnection());
            boolean ans=deskDao.updateLostAndFound(laf);
            if(ans){
                out.println("updated");
                
            }
            else{
                 out.println("error");
            }
            } catch (ParseException ex) {
                Logger.getLogger(EditLostAndFoundServlets.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
        
            
           
            
        }
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
