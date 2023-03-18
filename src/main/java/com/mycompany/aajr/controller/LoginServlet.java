/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.aajr.controller;

import com.mycompany.aajr.modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Anderson
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Usuario usuario =new Usuario ();
            usuario.setMailUsuario(req.getParameter("correo"));
            usuario.setPassword (req.getParameter("contraseña"));
            if (usuario.login()){
                resp.sendRedirect("programa_contable.jsp");
            }else {
                req.setAttribute("menssage","Los datos son incorrectos");
                req.getRequestDispatcher("Login.jsp").forward(req, resp);
            }
        } catch (SQLException | ClassNotFoundException esq) {
            req.setAttribute("menssage", esq);
            req.getRequestDispatcher("Login.jsp").forward(req, resp);

        }
    }

    
}
