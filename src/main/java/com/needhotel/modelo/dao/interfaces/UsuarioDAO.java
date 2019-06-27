package com.needhotel.modelo.dao.interfaces;

import com.needhotel.modelo.Usuario;

import java.sql.SQLException;
import java.util.List;

public interface UsuarioDAO {

    Boolean autenticacao(String login, String senha);
    Boolean cadastrarUsuario(Usuario usuario);
    Usuario buscarUsuario(String cpf);
    Boolean deletarUsuario(String cpf);
    Boolean atualizarUsuario(String cpf, Usuario usuario);
    List<Usuario> getUsuarios();

}
