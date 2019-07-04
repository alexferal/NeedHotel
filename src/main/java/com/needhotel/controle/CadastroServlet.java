package com.needhotel.controle;

import com.needhotel.modelo.domain.Usuario;
import com.needhotel.modelo.dao.implementacao.UsuarioDaoImpl;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/cadastrar")

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5,
        maxRequestSize = 1024 * 1024 * 5 * 5
)

public class CadastroServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        doPost(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        HttpSession session = req.getSession();

        if (req.getParameter("etapaFormUsuario").equals("0")){
            System.out.println("Param 0");
            req.getRequestDispatcher("cadastro.jsp?etapaFormUsuario=1").forward(req, resp);
        } else {
            UsuarioDaoImpl usuarioDaoImpl = new UsuarioDaoImpl();
            System.out.println("Param 1");

            if (req.getParameter("etapaFormUsuario").equals("1")){

                Usuario usuario = new Usuario();
                usuario.setCpf(req.getParameter("cpf"));
                usuario.setTelefone(req.getParameter("telefone"));
                usuario.setNome(req.getParameter("primeiroNome"));
                usuario.setSobreNome(req.getParameter("sobrenome"));

                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
                usuario.setDataNascimento(LocalDate.parse(req.getParameter("nascimento"), formatter));

                session.setAttribute("firstRegister", usuario);
                req.getRequestDispatcher("cadastrar?etapaFormUsuario=2").forward(req, resp);

            }else if (req.getParameter("etapaFormUsuario").equals("1")){
                Usuario usuario = (Usuario)session.getAttribute("firstRegister");

                usuario.setEmail(req.getParameter("email"));
                usuario.setSenha(req.getParameter("senha"));
                if (ServletFileUpload.isMultipartContent(req)){

                    String uploadPath = getServletContext().getRealPath("") + File.separator + "imagem";
                    File uploadDir = new File(uploadPath);

                    if (!uploadDir.exists())
                        uploadDir.mkdir();

                    List<String> foto = new ArrayList<>();
                    for (Part part : req.getParts()) {
                        if (part.getContentType() != null){
                            String fileName = getFileName(part);
                            String nomeFoto = ZonedDateTime.now().toInstant().getEpochSecond() + fileName.substring(fileName.indexOf('.'));
                            foto.add(nomeFoto);
                            part.write(uploadPath + File.separator + nomeFoto);
                        }
                    }
                    usuario.setFotoPerfil(foto.get(0));
                }
                usuarioDaoImpl.cadastrarUsuario(usuario);
                session.setAttribute("firstRegister", null);
                req.getRequestDispatcher("login.jsp").forward(req, resp);
            }
        }


    }

    private String getFileName(Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename"))
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
        }
        return "Default";
    }
}
