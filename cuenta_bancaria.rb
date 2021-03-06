=begin
Ejercicio 2
Dado el siguiente código UML
1. Crear la clase con el nombre CuentaBancaria (1punto)
Los métodos getter y setter para el atributo nombre_de_usuario (1punto)
Crear el constructor que reciba el nombre_usuario y numero_de_cuenta y lo asigne a los atributos(1punto)
Levantar una excepción del tipo RangeError si el atributo numero_de_cuenta tiene un número de dígitos 
distinto a 8 (se puede ocupar el método .digits para obtener los dígitos y .count para contarlos) (1punto)
Agregar un tercer parámetro opcional al constructor que permita establecer si una cuenta es VIP (1pto), este valor puede ser 1 o 0. Por defecto será 0.
Crear un método llamado numero_de_cuenta que devuelva con el número de cuenta con un prefijo '1-' 
si es vip y '0-' si no lo es. Ejemplo: si la cuenta es VIP y el número 00112233, el método 
debería devolver '1-00112233' (1punto)
=end
require 'byebug'

class CuentaBancaria
    attr_accessor :nombre_usuario

    def initialize(nombre_usuario, numero_cuenta, vip=0)
        @nombre_usuario = nombre_usuario
        @numero_cuenta = numero_cuenta
        @vip = vip
    end
    def numero_de_cuenta
        arreglo = @numero_cuenta.digits
        print arreglo
        puts " "
        n = arreglo.count
        if n != 8
            puts "El numero de cuenta debe tener al menos 8 digitos"
        else
            if @vip == 1
                print "#{@vip}-#{@numero_cuenta} es Vip"
                puts " "
            else
                print "#{@vip}-#{@numero_cuenta} no es Vip"
                puts " "
            end
        end
        puts "Cantidad de Digitos : #{arreglo.length}\n\n"     
    end
end
datos = CuentaBancaria.new('Andrés', 12345678, 1)
puts datos.nombre_usuario
puts datos.numero_de_cuenta