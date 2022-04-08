/** First Wollok example */
class Macowins{
	var property ventas
	
	method ganancias(fecha)=ventas.filter({unaVenta=>unaVenta.valorCompra(fecha)})
	
}

class Venta{
	var property prendaVendida
	var cantidadVendida
//donde meto la fecha??
	
	method valorCompra(unaFecha)= prendaVendida.precioFinal()*cantidadVendida
	
}
class Efectivo inherits Venta{
	
}

class Tarjeta inherits Venta{
	var cantidadCuotas
	var coeficiente
	override method valorCompra(unaFecha)= super(unaFecha) +self.recargo()
	
	
	method recargo()= cantidadCuotas*coeficiente+0.01*prendaVendida

}

//----------------------------------------------

class Prenda{
	var property estado
	var property precio
	method precioFinal() = precio + estado.promocion(precio) 
	
	

}
/* 
//estan definidas las prendas pero igual no las uso!deberia sacarlas 
class Saco inherits Prenda {}
class Pantalon inherits Prenda {}
class Camisa inherits Prenda {}
*/

object nuevo{
	method promocion(precio) = 0
}

class Promocion{
	var valorFijo
	method promocion(precio)= valorFijo
}
object liquidacion{
	method promocion(precio)= precio- precio*0.5
}


