Feature: Eliminar Producto

	Scenario: Eliminar Productos Exitosamente
		Given cargo el aplicativo Visor Web
		When inicio sesión con el usuario "admin" y clave "clave"
		 And selecciono el producto "PEPE" a eliminar
		 And elimino el producto seleccionado "PEPE"
		 Then el sistema muestra el mensaje "Se eliminó de manera correcta el Producto"
		 
	Scenario: Eliminar Productos Con Datos Vacios
		Given cargo el aplicativo Visor Web
			And inicio sesión con el usuario "admin" y clave "clave"
		 And selecciono el producto "" a eliminar
		 And elimino el producto seleccionado ""
		 Then el sistema muestra el mensaje "No ha seleccionado un Producto"		 