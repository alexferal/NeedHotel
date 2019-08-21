import com.needhotel.modelo.dao.implementacao.UsuarioDaoImpl;
import com.needhotel.modelo.domain.Usuario;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import java.time.LocalDate;

import static org.junit.Assert.*;

public class CadastroUsuarioTest {
    private static WebDriver driver;
    private UsuarioDaoImpl usuarioDao;

    @BeforeClass
    public static void setUpTest(){
        System.setProperty("webdriver.chrome.driver", "chromedriver");
        driver = new ChromeDriver();
    }

    @Before
    public void setUp() {
        driver.get("http://localhost:8081/NeedHotel.com/cadastrar");
    }

    @AfterClass
    public static void tearDownTest(){
        driver.quit();
    }

    @Test
    public void CadastroUsuarioValido() throws InterruptedException {
        Thread.sleep(2000L);
        WebElement element = driver.findElement(By.name("primeiroNome"));
        element.sendKeys("Daniel");

        element = driver.findElement(By.name("sobrenome"));
        element.sendKeys("Alves");
        Thread.sleep(2000L);
        element = driver.findElement(By.name("cpf"));
        element.sendKeys("387.776.138-05");
        Thread.sleep(2000L);
        element = driver.findElement(By.name("telefone"));
        element.sendKeys("(83) 99607-4974");
        Thread.sleep(2000L);
        element = driver.findElement(By.name("nascimento"));
        element.sendKeys("07/02/1999");
        Thread.sleep(2000L);
        element = driver.findElement(By.id("btnCadastrar"));
        element.click();
        Thread.sleep(2000L);
        element = driver.findElement(By.name("foto"));
        element.sendKeys("/home/danielalves/Downloads/apartamento.jpg");
        Thread.sleep(2000L);
        element = driver.findElement(By.name("email"));
        element.sendKeys("danielalveslima36@gmail.com");
        Thread.sleep(2000L);
        element = driver.findElement(By.name("senha"));
        element.sendKeys("1234");
        Thread.sleep(2000L);
        element = driver.findElement(By.name("conSenha"));
        element.sendKeys("1234");
        Thread.sleep(2000L);
        element = driver.findElement(By.id("cadastrar"));
        element.click();
        Thread.sleep(2000L);
        element = driver.findElement(By.id("register"));
        assertNotNull(element);
    }

    @Test
    public void CadastroUsuarioCpfCadastrado(){
        usuarioDao.cadastrarUsuario(new Usuario("222.222.222.02", "Alex", "Fernandes", "(83)99502-8557", LocalDate.now(), "alex@teste.com", "4321", "perfil.jpg"));


    }
}
