/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.serv;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
public class addACholder extends HttpServlet {

    @EJB
    private AccountHolderFacadeLocal afl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String town = request.getParameter("town");
        String cellno = request.getParameter("cellNo");
        String email = request.getParameter("email");
        String village = request.getParameter("village");
        Integer code = Integer.parseInt(request.getParameter("code"));
       Double balance = Double.parseDouble(request.getParameter("balance"));
       
        AccountHolder ach = new AccountHolder();
        ach.setFullName(name);
        ach.setTown(town);
        ach.setBalance(balance);
        ach.setCellNo(cellno);
        ach.setEmail(email);
        ach.setVillage(village);
        ach.setDate(new Date());
        ach.setCode(code);
        
        afl.create(ach);
        request.setAttribute("ach", ach);
        
        RequestDispatcher resMan = request.getRequestDispatcher("achAdded.jsp");
        resMan.forward(request, response);
    }

    
}
