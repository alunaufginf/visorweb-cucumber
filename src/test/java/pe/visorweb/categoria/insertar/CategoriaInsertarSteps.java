package pe.visorweb.categoria.insertar;

import static org.junit.Assert.assertEquals;

import org.openqa.selenium.WebDriver;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pe.visorweb.driver.CrearDriver;
import pe.visorweb.driver.tipos.Navegador;
import pe.visorweb.page.LoginPage;
import pe.visorweb.page.RegistrarCategoriaPage;

public class CategoriaInsertarSteps {

	private WebDriver driver;
	private String url = "http://localhost:8080/VisorWeb/index.xhtml";
	private LoginPage loginPage;
	private RegistrarCategoriaPage registrarCategoriaPage;
	private String mensajeObtenido;
	
	@Before
	public void configurarDriver() {
		driver = CrearDriver.getDriver(Navegador.CHROME);
	}
	
	@After
	public void cerrarDriver() {
		driver.close();
	}
	
	@Given("cargo el aplicativo Visor Web")
	public void cargarAplicativoVisor() {
		loginPage = new LoginPage(driver, url);
		loginPage.cargarPaginaLogin();
	}
	
	@And("inicio sesión con el usuario {string} y clave {string}")
	public void iniciarSesion(String usuario, String clave) {
		loginPage.iniciarSesion(usuario, clave);
	}
	
	@When("cargo la pagina registrar categoria")
	public void cargarPaginaRegistrarCategoria() {
		registrarCategoriaPage = loginPage
									.getBienvenidaPage()
									.irMantenimientoCategoria()
									.cargarPaginaRegistrarCategoria();
	}
	
	@And("registro la categoria {string}")
	public void registrarCategoria(String nombreCategoria) {
		mensajeObtenido = registrarCategoriaPage.registrarCategoria(nombreCategoria);
	}
	
	@Then("el sistema muestra el mensaje {string}")
	public void validarResultado(String mensajeEsperado) {
		assertEquals(mensajeEsperado, mensajeObtenido);
	}
	
}
