/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.AccInfo;
import model.Account;
import model.DateNoti;
import model.Noti;
import model.NotiCate;

/**
 *
 * @author Admin
 */
public class NotiShop2Control extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        DAO dao= new DAO();
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if (a == null || a.getIsSell()==0) {
            response.sendRedirect("login.jsp");
        } else {
            int accountID = a.getuID();
            int shopID= dao.getShopIdByAccountId(accountID);
            String avatar= dao.getAvatarByShopId(shopID);
            int countNotiToday = dao.countNotiTodayForShop(shopID);
            ArrayList<Noti> listNotiToday= dao.getListNotiTodayForShop(shopID);
            
            ArrayList<NotiCate> listNotiCate= dao.getListNotiCate();
            ArrayList<Noti> listAllNoti= dao.getListAllNotiForShop(shopID);
            ArrayList<DateNoti> listDateNoti = dao.getListDateNoti1();
            request.setAttribute("listDateNoti", listDateNoti);
            request.setAttribute("listAllNoti", listAllNoti);
            request.setAttribute("listNotiCate",listNotiCate );
            request.setAttribute("listNotiToday", listNotiToday);
            
            request.setAttribute("countNotiToday", countNotiToday);
            request.setAttribute("avatar", avatar);
            request.getRequestDispatcher("NotificationShop2.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}