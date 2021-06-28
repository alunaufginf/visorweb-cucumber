Feature: Insertar Categoria

  Scenario: Registrar Categoria Exitosamente
    Given cargo el aplicativo Visor Web
    And inicio sesión con el usuario <usuario> y clave <clave>
    When cargo la pagina registrar categoria
    And registro la categoria <nombreCategoria>
    Then el sistema muestra el mensaje <mensajeEsperado>

    Examples:
      |usuario|clave  |nombreCategoria           |mensajeEsperado                                         |
      |”admin”|”clave”|”Categoria Cucumber tabla”|”Se guardó de manera correcta la Categoría”             |
      |”admin”|”clave”|””                        |”Nombre: Error de validación: se necesita un valor.”    |