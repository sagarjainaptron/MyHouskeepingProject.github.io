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
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hp world
 */
@MultipartConfig
public class AddLostAndFoundServlets extends HttpServlet {

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
         
            
            try {
                   String dDate = request.getParameter("datepicker2");
                 SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
                Date sdate =  sdf.parse(dDate);
                String ltf   = request.getParameter("ltf");
                String lif   = request.getParameter("lif");
                String li   = request.getParameter("li");
                String ld   = request.getParameter("ld");
                String lfb   = request.getParameter("lfb");
                
          
     
            LostAndFound laf=new LostAndFound(sdate,ltf,lif, li,ld, lfb);
            
            LostAndFoundDao dao=new LostAndFoundDao(ConnectionProvider.getConnection());
            if(dao.insertLostAndFoundFields(laf)){
                   out.println("done");
                   
              }else{
                  out.println("error");
              }
            } catch (ParseException ex) {
                Logger.getLogger(AddLostAndFoundServlets.class.getName()).log(Level.SEVERE, null, ex);
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
