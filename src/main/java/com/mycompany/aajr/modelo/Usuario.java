/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.aajr.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author casa
 */
public class Usuario extends ConectionBD {

    private int idusers;
    private String tipoDocumentoUsuario;
    private String nomDocumentoUsuario;
    private String nomUsuario;
    private String apelCliente;
    private String telUsuario;
    private String mailUsuario;
    private String password;
    private int rol_idRol; 
     
    public Usuario() throws SQLException, ClassNotFoundException {
        super();
    }
 public boolean login() throws SQLException {
        PreparedStatement ps = super.coon.prepareStatement("SELECT * FROM usuarios WHERE mailUsuario = ? AND password = ?");
        ps.setString(1, mailUsuario);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        return rs.next();
   
    }

     public void update( ) throws SQLException {
        PreparedStatement ps = super.coon.prepareStatement("UPDATE usuarios SET  tipoDocumentoUsuario = ?, numDocumentoUsuario = ?, nomUsuario = ?, apelCliente = ?, telUsuario = ?, mailUsuario = ?, password = ? where idUsuario = ?");
       
        ps.setString(1, tipoDocumentoUsuario);
        ps.setString(2, nomDocumentoUsuario);
        ps.setString(3, nomUsuario);
        ps.setString(4, apelCliente);
        ps.setString(5, telUsuario);
        ps. setString(6, mailUsuario);
        ps.setString(7, password);
        ps.setInt(8, idusers);
        ps.executeUpdate();
    }

    public Usuario findById() throws SQLException, ClassNotFoundException {
        PreparedStatement ps = super.coon.prepareStatement("SELECT * FROM usuarios WHERE idUsuario = ?");
        ps.setInt(1, idusers);
        ResultSet rs = ps.executeQuery();
        if (rs.next() == false) {
            return null;
        }
        Usuario userData = new Usuario();
        userData.setIdusers(rs.getInt("idUsuario"));
        userData.setTipoDocumentoUsuario(rs.getString("tipoDocumentoUsuario"));
        userData.setNomDocumentoUsuario(rs.getString("numDocumentoUsuario"));
        userData.setNomUsuario(rs.getString("nomUsuario"));
        userData.setApelCliente(rs.getString("apelCliente"));
        userData.setMailUsuario(rs.getString("mailUsuario"));
        userData.setPassword(rs.getString("password"));
       
        return userData;
    }

    public void delete() throws SQLException {
        PreparedStatement ps = super.coon.prepareStatement("DELETE FROM usuarios WHERE idusuario = ?");
        ps.setInt(1, idusers);
        ps.executeUpdate();
    }

    public void create() throws SQLException {
        PreparedStatement ps = super.coon.prepareStatement("INSERT INTO usuarios (tipoDocumentoUsuario,numDocumentoUsuario,nomUsuario,apelCliente,telUsuario,mailusuario,password,rol_idRol) VALUES (?, ?, ?, ?, ?, ?, ?,?)");
        ps.setString(1, tipoDocumentoUsuario);
        ps.setString(2, nomDocumentoUsuario);
        ps.setString(3, nomUsuario);
        ps.setString(4, apelCliente);
        ps.setString(5, telUsuario);
        ps.setString(6, mailUsuario);
        ps.setString(7, password);
        ps.setInt(8, rol_idRol);
        
        ps.executeUpdate();
    }

    public List<Usuario> findAll() throws SQLException, ClassNotFoundException {
        PreparedStatement ps = super.coon.prepareStatement("SELECT * FROM usuarios");
        ResultSet rs = ps.executeQuery();
        List<Usuario> usuarios = new ArrayList();
        while (rs.next()) {
            Usuario userData = new Usuario();
            userData.setIdusers(rs.getInt("idUsuario"));
            userData.setTipoDocumentoUsuario(rs.getString("tipoDocumentoUsuario"));
            userData.setNomDocumentoUsuario(rs.getString("numDocumentoUsuario")); 
            userData.setNomUsuario(rs.getString("nomUsuario")); 
            userData.setApelCliente(rs.getString("apelCliente")); 
            userData.setTelUsuario(rs.getString("telUsuario")); 
            userData.setMailUsuario(rs.getString("mailUsuario")); 
            userData.setPassword(rs.getString("password")); 
             
            usuarios.add(userData);
        }
        return usuarios;
    
    }

    public int getIdusers() {
        return idusers;
    }

    public void setIdusers(int idusers) {
        this.idusers = idusers;
    }

    public String getTipoDocumentoUsuario() {
        return tipoDocumentoUsuario;
    }

    public void setTipoDocumentoUsuario(String tipoDocumentoUsuario) {
        this.tipoDocumentoUsuario = tipoDocumentoUsuario;
    }

    public String getNomDocumentoUsuario() {
        return nomDocumentoUsuario;
    }

    public void setNomDocumentoUsuario(String nomDocumentoUsuario) {
        this.nomDocumentoUsuario = nomDocumentoUsuario;
    }

    public String getNomUsuario() {
        return nomUsuario;
    }

    public void setNomUsuario(String nomUsuario) {
        this.nomUsuario = nomUsuario;
    }

    public String getApelCliente() {
        return apelCliente;
    }

    public void setApelCliente(String apelCliente) {
        this.apelCliente = apelCliente;
    }

    public String getTelUsuario() {
        return telUsuario;
    }

    public void setTelUsuario(String telUsuario) {
        this.telUsuario = telUsuario;
    }

    public String getMailUsuario() {
        return mailUsuario;
    }

    public void setMailUsuario(String mailUsuario) {
        this.mailUsuario = mailUsuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRol_idRol() {
        return rol_idRol;
    }

    public void setRol_idRol(int rol_idRol) {
        this.rol_idRol = rol_idRol;
    }
}


    

