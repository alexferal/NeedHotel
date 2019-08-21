package integracao;

import com.needhotel.modelo.dao.implementacao.UsuarioDaoImpl;
import com.needhotel.modelo.domain.Usuario;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

import java.time.LocalDate;

public class CadastroUsuarioTest {
    private UsuarioDaoImpl usuarioDao;

    @Before
    public void setUp(){
        this.usuarioDao = new UsuarioDaoImpl();
    }

    @Test
    public void usuarioValido(){
        Usuario usuario = new Usuario("222.222.222-02", "Daniel", "Alves", "(83)99633-8557", LocalDate.now(), "daniel@daniel.com", "12345", "perfil.jpg");
        usuarioDao.cadastrarUsuario(usuario);
        Usuario usuarioRegistrado = usuarioDao.buscarPorID("222.222.222-02");
        assertNotNull(usuarioRegistrado);
    }




}
