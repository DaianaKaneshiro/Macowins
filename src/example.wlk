/** First Wollok example */
class Macowins{
	var property ventas
	
	method ganancias(fecha)=ventas.filter({unaVenta=>unaVenta.valorCompra()})
	//ver como enganchar la fecha
}

class Venta{
	var property prendas=[]
	var cantidadVendida
	var property fecha= new Date()
	
	method valorCompra()= prendas.sum({unaPrenda=>unaPrenda.precioFinal()*cantidadVendida})

	
}

class Efectivo inherits Venta{
	
}

class Tarjeta inherits Venta{
	var cantidadCuotas
	var coeficiente
	override method valorCompra()= super() +self.recargo()
	
	
	method recargo()= cantidadCuotas*coeficiente+0.01*unaPrenda

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


