
package com.mycompany.aajr.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mycompany.aajr.modelo.Productos;
import com.mycompany.aajr.modelo.Usuario;

/**
 *
 * @author Johathan
 */
@WebServlet(name = "UsuarioServlet", urlPatterns = {"/UsuarioServlet"})
public class UsuarioServlet extends HttpServlet {

      @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
           Usuario  usuario = new Usuario();
            req.setAttribute("listaUsuarios", usuario.findAll());
            req.getRequestDispatcher("tabla_usuarios.jsp").forward(req, resp);
        } catch (ClassNotFoundException | SQLException e) {
            req.setAttribute("messge",e);
            req.getRequestDispatcher("nuevo.jsp").forward(req, resp);
        }        
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String action = req.getParameter("action");
            Usuario usuarioModel = new Usuario();
            switch (action) {
                case "Guardar":
                    String usuarioIdUpdate = req.getParameter("idUsuario");
                    usuarioModel.setTipoDocumentoUsuario(req.getParameter("tipoDocumentoUsuario"));
                    usuarioModel.setNomDocumentoUsuario(req.getParameter("nomDocumentoUsuario"));
                    usuarioModel.setNomUsuario (req.getParameter("nomUsuario"));
                    usuarioModel.setApelCliente(req.getParameter("apelCliente"));
                    usuarioModel.setTelUsuario(req.getParameter("telUsuario"));
                    usuarioModel.setMailUsuario(req.getParameter("mailUsuario"));
                    usuarioModel.setPassword(req.getParameter("password"));
                   
                    usuarioModel.setRol_idRol(2);
                   
                    if (usuarioIdUpdate != null) {
                        usuarioModel.setIdusers(Integer.parseInt(usuarioIdUpdate));
                        usuarioModel.update();
                    } else {
                        usuarioModel.create();
                    }
                    break;
                case "eliminar":
                    int usuarioIdusuario = Integer.parseInt(req.getParameter("idUsuario"));
                   usuarioModel.setIdusers(usuarioIdusuario);
                   usuarioModel.delete();
                    break;
                    
                 
                    
                case "actualizar":
                    int usuarioSelect = Integer.parseInt(req.getParameter("id"));
                     usuarioModel.setIdusers(usuarioSelect);
                    req.setAttribute("usuarioData",  usuarioModel.findById());
                    req.getRequestDispatcher("modificar_usuario.jsp").forward(req, resp);
                   
                    break;
                    
                   
            }
            req.setAttribute("listaUsuarios", usuarioModel.findAll());
            req.getRequestDispatcher("tabla_usuarios.jsp").forward(req, resp);
            } catch (ClassNotFoundException|SQLException e) {
             req.setAttribute("messge",e);
            req.getRequestDispatcher("nuevo.jsp").forward(req, resp);
                
            }
        
    }
   
    
}
