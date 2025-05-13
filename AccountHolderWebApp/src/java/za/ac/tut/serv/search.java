/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.serv;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.AccountHolderFacadeLocal;
import za.ac.tut.entity.AccountHolder;

/**
 *
 * @author USER
 */
public class search extends HttpServlet {

    @EJB
    private AccountHolderFacadeLocal afl;
    
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Long id = Long.parseLong(request.getParameter("id"));
        
        AccountHolder ac = afl.find(id);
        
        request.setAttribute("ac", ac);
        
        RequestDispatcher resMan = request.getRequestDispatcher("foundAc.jsp");
        resMan.forward(request, response);
   
    }

    
}
