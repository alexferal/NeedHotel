package com.needhotel.modelo;

import com.needhotel.modelo.Usuario;

public interface UsuarioDAO {

    Boolean autenticacao(String login, String senha);
    Boolean cadastro(Usuario usuario);
}
