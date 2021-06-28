Feature: Listar Producto
  Scenario: Listar Producto Exitosamente
    Given cargo el aplicativo Visor Web
    And inicio sesión con el usuario "admin" y clave "clave"
    When cargo la pagina mantenimiento producto
    And se llena el campo filtro con "tomatodo"
    Then el sistema muestra un listado sin ningun mensaje ""

  Scenario: Listar Producto Con Datos Vacíos
    Given cargo el aplicativo Visor Web
    And inicio sesión con el usuario "admin" y clave "clave"
    When cargo la pagina mantenimiento producto
    And se llena el campo filtro con "noexiste"
    Then el sistema muestra un error: "No existe registros para la consulta"