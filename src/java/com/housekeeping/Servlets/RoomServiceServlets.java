/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.housekeeping.Servlets;


import com.housekeeping.dao.FloorDao;
import com.housekeeping.entities.Floor_service;
import com.housekeeping.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;


//import java.util.Date;
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
public class RoomServiceServlets extends HttpServlet {

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
         
            
            
        
             String ddate = request.getParameter("datepicker3");
             SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
             
             
          int fno= Integer.parseInt(request.getParameter("fn"));
        String rno= request.getParameter("rn");
        String nname= request.getParameter("nn");
         String sstatus= request.getParameter("ss");
         String sservice= request.getParameter("sp");
         
         //   Date sdate =  sdf.parse(ddate);
            
           
          Floor_service fs=new Floor_service(fno, rno, sstatus, nname,sservice);
            
            FloorDao dao=new FloorDao(ConnectionProvider.getConnection());
            if(dao.insertDatewiseServiceRecords(fs)){
                   out.println("done");
              }else{
                  out.println("error");
              }
   
        }/* catch (ParseException ex) {
           ex.printStackTrace();
              
        }*/
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
