package com.needhotel.modelo;

import com.needhotel.modelo.Usuario;

import java.sql.SQLException;

public interface UsuarioDAO {

    Boolean autenticacao(String login, String senha);
    Boolean cadastrarUsuario(Usuario usuario) throws SQLException;
}
