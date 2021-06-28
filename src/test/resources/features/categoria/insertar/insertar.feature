Feature: Insertar Categoria

	Scenario: Registrar Categoria Exitosamente
		Given cargo el aplicativo Visor Web
		  And inicio sesión con el usuario "admin" y clave "clave"
		 When cargo la pagina registrar categoria
		  And registro la categoria "Laptop Cucumber"
		 Then el sistema muestra el mensaje "Se guardó de manera correcta la Categoría"
		 
	Scenario: Registrar Categoria Con Datos Vacíos
		Given cargo el aplicativo Visor Web
		  And inicio sesión con el usuario "admin" y clave "clave"
		 When cargo la pagina registrar categoria
		  And registro la categoria ""
		 Then el sistema muestra el mensaje "Nombre: Error de validación: se necesita un valor."