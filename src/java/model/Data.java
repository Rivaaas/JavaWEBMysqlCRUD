/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author rivaa
 */
public class Data {

    private Conexion con;

    public Data() throws SQLException, ClassNotFoundException {
        con = new Conexion(
                "localhost",
                "bd_22",
                "root",
                ""
        );
    }

    public List<Usuario> getUsuarios() throws SQLException {
        List<Usuario> list_us = new ArrayList<>();

        String query = "SELECT * FROM usuario";

        ResultSet rs = con.ejecutarSelect(query);

        while (rs.next()) {
            Usuario u = new Usuario();

            u.setId(rs.getInt(1));
            u.setRut(rs.getString(2));
            u.setNombre(rs.getString(3));
            u.setPass(rs.getString(4));

            list_us.add(u);

        }

        return list_us;

    }

    public void insertarUsuario(Usuario u) throws SQLException {
        String query = "INSERT INTO usuario VALUES (NULL,'" + u.getRut() + "','" + u.getNombre() + "','" + u.getPass() + "')";

        con.ejecutar(query);

    }

    public void editarUsuario(String rutBuscar, String nombre_n, String pass_n) throws SQLException {

        String update = "UPDATE usuario SET nombre = '"+nombre_n+"', pass = '"+pass_n+ "' WHERE rut = '" +rutBuscar+"'; ";

        con.ejecutar(update);

    }

    public void eliminarUsuario(String rutBuscar) throws SQLException {

        String delete = "DELETE FROM usuario WHERE rut = '" + rutBuscar + "'";

        con.ejecutar(delete);

    }

        public Usuario getUsuarioId(String id) throws SQLException {

        Usuario u = null;

        String query = "SELECT * FROM usuario WHERE id = '"+id+"'";

        ResultSet rs = con.ejecutarSelect(query);

        if (rs.next()) {
            u = new Usuario();

            u.setId(rs.getInt(1));
            u.setRut(rs.getString(2));
            u.setNombre(rs.getString(3));
            u.setPass(rs.getString(4));

        }else{
        
            System.out.println("No encontrasdo JAJAJAJAJAJ");
        }
        
        return u;

    }

}
