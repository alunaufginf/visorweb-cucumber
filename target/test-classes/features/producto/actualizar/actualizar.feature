Feature: Actualizar Producto

	Scenario: Actualizar Productos Exitosamente
		Given cargo el aplicativo Visor Web
		When inicio sesión con el usuario "admin" y clave "clave"
		 When selecciono el producto "PEPE" a actualizar
		  And actualizo los datos del producto seleccionado con nombre de producto "Laptop" y precio "2500"
		 Then el sistema muestra el mensaje "Se actualizó de manera correcta el Producto"
		 
	Scenario: Actualizar Productos Con Datos Vacios
		Given cargo el aplicativo Visor Web
			And inicio sesión con el usuario "admin" y clave "clave"
		 When selecciono el producto "PEPE" a actualizar
		  And actualizo los datos del producto seleccionado con nombre de producto "" y precio ""
		 Then el sistema muestra el mensaje "Nombre: Error de validación: se necesita un valor. Precio: Error de validación: se necesita un valor."		 