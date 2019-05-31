package com.needhotel.controle;

import com.needhotel.modelo.Usuario;
import com.needhotel.modelo.UsuarioDAO;
import com.needhotel.modelo.UsuarioDAOBD;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.time.LocalDate;

@WebServlet("/cadastrar")
public class CadastroServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp){
        Usuario usuario = new Usuario();
        UsuarioDAOBD usuarioDAOBD = new UsuarioDAOBD();

        usuario.setNome(req.getParameter("primeiroNome"));
        usuario.setSobreNome(req.getParameter("sobrenome"));
        usuario.setCpf(req.getParameter("cpf"));
        usuario.setTelefone(req.getParameter("telefone"));
        usuario.setDataNascimento(LocalDate.parse(req.getParameter("nascimento")));
        usuario.setEmail(req.getParameter("email"));
        usuario.setSenha(req.getParameter("senha"));

        try {
            usuarioDAOBD.cadastrarUsuario(usuario);
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
