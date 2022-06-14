total=0
print("para finalizar ingrese 0")
cantidad= float(input("ingrese su monto: "))

while cantidad!=0:
     if cantidad<0:
         print("monto no valido")
     else:
         total+=cantidad
     cantidad= float(input("monto de la venta: "))
     print("para finalizar ingrese 0")
     if total>1000:
        total-=total*0.1     #total de descuento
print("monto total a pagar: " , total)




