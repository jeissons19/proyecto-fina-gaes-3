/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.aajr.controller;

import com.mycompany.aajr.modelo.Productos;
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
 * @author casa
 */
@WebServlet(name = "ProductoServlet", urlPatterns = {"/ProductoServlet"})
public class ProductoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
           Productos  productos = new Productos();
            req.setAttribute("lista", productos.findAll());
            req.getRequestDispatcher("tablaProcutos.jsp").forward(req, resp);
        } catch (ClassNotFoundException | SQLException e) {
            req.setAttribute("messge",e);
            req.getRequestDispatcher("nuevo.jsp").forward(req, resp);
        }        
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String action = req.getParameter("action");
            Productos productosModel = new Productos();
            switch (action) {
                case "Guardar":
                    String productosIdUpdate = req.getParameter("userIdProductos");
                    productosModel.setCodProducto(req.getParameter("codProducto"));
                    productosModel.setNombreProducto(req.getParameter("nombreProducto"));
                    productosModel.setValorProducto(Integer.parseInt(req.getParameter("valorProducto")));
                    productosModel.setStock(Integer.parseInt(req.getParameter("stock")));
                    productosModel.setIdReferencia(2);
                   
                    if (productosIdUpdate != null) {
                        productosModel.setIdProductos(Integer.parseInt(productosIdUpdate));
                        productosModel.update();
                    } else {
                        productosModel.create();
                    }
                    break;
                case "eliminar":
                    int productosIdproductos = Integer.parseInt(req.getParameter("IdProductos"));
                    productosModel.setIdProductos(productosIdproductos);
                    productosModel.delete();
                    break;
                    
                 
                    
                case "actualizar":
                    int productosSelect = Integer.parseInt(req.getParameter("id"));
                    productosModel.setIdProductos(productosSelect);
                    req.setAttribute("productoData", productosModel.findById());
                    req.getRequestDispatcher("modificar.jsp").forward(req, resp);
                   
                    break;
                    
                   
            }
            req.setAttribute("lista", productosModel.findAll());
            req.getRequestDispatcher("tablaProcutos.jsp").forward(req, resp);
            } catch (ClassNotFoundException|SQLException e) {
             req.setAttribute("messge",e);
            req.getRequestDispatcher("nuevo.jsp").forward(req, resp);
                
            }
        
    }

}
