package com.needhotel.modelo;

import com.needhotel.modelo.Usuario;

import java.sql.SQLException;

public interface UsuarioDAO {

    Boolean autenticacao(String login, String senha) throws SQLException;
    Boolean cadastrarUsuario(Usuario usuario) throws SQLException;
    Usuario getUsuario(String email) throws SQLException;
}
