/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.aajr.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Johathan
 */
public class Productos extends ConectionBD {

    private int idProductos;
    private String codProducto;
    private String nombreProducto;
    private int valorProducto;
    private int stock;
    private int idReferencia;

 

   
    

    public Productos() throws SQLException, ClassNotFoundException {
        super();
    }

    
    
    ///AREGLO DE PRoducto ==> cada producto contiene
    
    
    public List<Productos> findAll() throws SQLException, ClassNotFoundException {
        PreparedStatement ps = super.coon.prepareStatement("SELECT * FROM productos");
        ResultSet rs = ps.executeQuery();
        List<Productos> productos = new ArrayList();
        while (rs.next()) {
            
            Productos productosData = new Productos();
            
            productosData.setIdProductos(rs.getInt("idProductos"));
            productosData.setCodProducto(rs.getString("codProducto"));
            productosData.setNombreProducto(rs.getString("nombreProducto"));
            productosData.setValorProducto(rs.getInt("valorProducto"));
            productosData.setStock(rs.getInt("stock"));

            productos.add(productosData);
        }
        return productos;
    }
    
    
    
    public Productos findById() throws SQLException, ClassNotFoundException {
        PreparedStatement ps = super.coon.prepareStatement("SELECT * FROM productos where idProductos=?");
        ps.setInt(1, idProductos);
        ResultSet rs = ps.executeQuery();
        rs.next();
        Productos productosData = new Productos();
        productosData.setIdProductos(rs.getInt("idProductos"));
        productosData.setCodProducto(rs.getString("codProducto"));
        productosData.setNombreProducto(rs.getString("nombreProducto"));
        productosData.setValorProducto(rs.getInt("valorProducto"));
        productosData.setStock(rs.getInt("stock"));

          
       
        return productosData;
    }
    
    
    

       public void update( ) throws SQLException {
        PreparedStatement ps = super.coon.prepareStatement("UPDATE productos SET  codProducto = ?, nombreProducto = ?, valorProducto = ?, stock = ? where idProductos = ?");
       
        ps.setString(1, codProducto);
        ps.setString(2, nombreProducto);
        ps.setInt(3, valorProducto);
        ps.setInt(4, stock);
         ps.setInt(5, idProductos);
        ps.executeUpdate();
        
        }

    public void delete() throws SQLException {
        PreparedStatement ps = super.coon.prepareStatement("DELETE  FROM productos WHERE idProductos = ?");
        ps.setInt(1, idProductos);
        ps.executeUpdate();
    }

    public void create() throws SQLException {
        PreparedStatement ps = super.coon.prepareStatement("INSERT INTO productos (idProductos,codProducto,nombreProducto,valorProducto,stock,referencia_idReferencia) VALUES (null,?, ?, ?, ?, ? )");
        ps.setString(1, codProducto);
        ps.setString(2, nombreProducto);
        ps.setInt(3, valorProducto);
        ps.setInt(4, stock);
        ps.setInt(5,idReferencia);
        ps.executeUpdate();
    }
    
    

    public int getIdProductos() {
        return idProductos;
    }

    public void setIdProductos(int idProductos) {
        this.idProductos = idProductos;
    }

    public String getCodProducto() {
        return codProducto;
    }

    public void setCodProducto(String codProducto) {
        this.codProducto = codProducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public int getValorProducto() {
        return valorProducto;
    }

    public void setValorProducto(int valorProducto) {
        this.valorProducto = valorProducto;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getIdReferencia() {
        return idReferencia;
    }

    public void setIdReferencia(int idReferencia) {
        this.idReferencia = idReferencia;
    }

    public void setTipoDocumentoUsuario(String parameter) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void setNomDocumentoUsuario(String parameter) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void setNomUsuario(int parseInt) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void setApelCliente(int parseInt) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void setTelUsuario(int parseInt) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void setMailUsuario(int parseInt) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    

    }

