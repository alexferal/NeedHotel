package com.needhotel.controle;

import com.needhotel.modelo.Usuario;
import com.needhotel.modelo.UsuarioDAO;
import com.needhotel.modelo.UsuarioDAOBD;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.time.LocalDate;

@WebServlet("/cadastrar")
public class CadastroServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp){
        UsuarioDAOBD usuarioDAOBD = new UsuarioDAOBD();
        HttpSession session = req.getSession();


        if (session.getAttribute("firstRegister") == null){
            Usuario usuario = new Usuario();
            usuario.setCpf(req.getParameter("cpf"));
            usuario.setTelefone(req.getParameter("telefone"));
            usuario.setNome(req.getParameter("primeiroNome"));
            usuario.setSobreNome(req.getParameter("sobrenome"));
            usuario.setDataNascimento(LocalDate.parse(req.getParameter("nascimento")));

            session.setAttribute("firstRegister", usuario);
        }else {
            Usuario usuario = (Usuario)session.getAttribute("firstRegister");
            usuario.setEmail(req.getParameter("email"));
            usuario.setSenha(req.getParameter("senha"));

            try {
                usuarioDAOBD.cadastrarUsuario(usuario);
            } catch (SQLException e) {
                e.printStackTrace();
            }


        }
    }
}
