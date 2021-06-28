Feature: Registrar Producto

  Scenario: Registrar Producto Exitosamente
    Given cargo el aplicativo Visor Web
    And inicio sesión con el usuario "admin" y clave "clave"
    When cargo la pagina registrar producto
    And registro el nombre "Agua San Luis", precio "3"
    Then el sistema muestra el mensaje "Se guardó de manera correcta el Producto"

  Scenario: Registrar Producto Con Datos Vacíos
    Given cargo el aplicativo Visor Web
    And inicio sesión con el usuario "admin" y clave "clave"
    When cargo la pagina registrar producto
    And registro el nombre "" y precio ""
    Then el sistema muestra el mensaje "Nombre: Error de validación: se necesita un valor. Precio: Error de validación: se necesita un valor.";