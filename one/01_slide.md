!SLIDE
# QUE ES RUBY #

!SLIDE smbullets 

## Ruby es un lenguaje interpretado

* todo es un objeto
* todo se evalúa como una expresión
* interpretado
* muy alto nivel

!SLIDE commandline center

## Palabras clave 

<code>
    @@@ ruby
    BEGIN END alias and begin break case 
    class def defined do else elsif end 
    ensure false for if in module next nil 
    not or redo rescue retry return 
    self super  then true undef unless 
    until when while yield
</code>

!SLIDE smaller 

## El clásico "Hola mundo!"

Crear un archivo llamado hola.rb: 

     @@@ ruby
     #!/usr/bin/env ruby
     puts "Hola wadus!"


Ejecutar esto en la misma carpeta 

     @@@ bash 
     chmod a+x hola.rb
     mv hola.rb hola
     ./hola
     Hola wadus!
    

!SLIDE 

## El lado oscuro de Ruby

     @@@ ruby
     method(:puts).call "Hola wadus!"


!SLIDE bullets incremental

# Comentarios 

De una línea

    @@@ ruby
    wadus = wadus + 1   # le sumo 1 a wadus

De varias 

    @@@ ruby
    =begin
    Me gusta poner comentarios largos porque
    explican mejor el código
    =end
    wadus = wadus + 1


!SLIDE bullets incremental

# Tipos de datos simples

* <code>i = 27</code>
* <code>c = ?x</code>
* <code>wadus = "Hola me llamo Wadus"</code>
* <code>flag = false</code>

!SLIDE 

# Cadenas

Se define con comillas dobles

    str = "Las cadenas son así de fáciles"

o simples

    otra_str = str + ' y difíciles'

!SLIDE smaller

# Interpolación de cadenas

    @@@ ruby
    str = "cadenas"
    otra_string = "Las #{str} son así de fáciles"
    libro = "Las #{1000+1} noches"
    esto_peta = 'Las #{str} son así de difíciles'

**Moraleja** ¡Cuidado con las comillas simples!

!SLIDE

# Interpolando en el día a día 

    @@@ ruby
    1.upto(100).each do |x|
       if x % 2 == 1 then 
          puts "El #{x} es impar"  
       end 
    end

!SLIDE

# ¿Qué se puede hacer con cadenas?

http://ruby-doc.org/core/classes/String.html

!SLIDE

# ¡Podemos ejecutar comandos!

    @@@ ruby
    res1 = `ps -ef`
    res2 = %x[uname -a]


!SLIDE incremental

# Expresiones regulares

* Esas para otro día! ;)

!SLIDE smaller

# Arrays 

Pueden contener datos de cualquier tipo

Tantos datos como se quiera


    @@@ ruby
    >> otro = ["a", "b", "c", "d"]
    => ["a", "b", "c", "d"]

    >> arr = %w(a b c d)
    => ["a", "b", "c", "d"]

    >> arr + otro
    => ["a", "b", "c", "d", "a", "b", "c", "d"]

    >> arr[3]
    => "d"

Los verdaderos programadores empiezan a contar por el cero

!SLIDE

## Qué se puede hacer con arrays

http://www.ruby-doc.org/core/classes/Array.html

!SLIDE smaller code

    @@@ ruby
    >> arr
    => ["a", "b", "c", "d"]

    >> arr[3]
    => "d"

    >> a = ["a","b","c","d","e"]
    => ["a", "b", "c", "d", "e"]

    >> a*2
    => ["a", "b", "c", "d", "e", "a", "b", "c", "d", "e"]

    >> a + %w(uno dos tres)
    => ["a", "b", "c", "d", "e", "uno", "dos", "tres"]

!SLIDE smaller 

## ¿Me lo cambias o no?

    @@@ ruby
    >> a
    => ["a", "b", "c", "d", "e"]

    >> a << "f"
    => ["a", "b", "c", "d", "e", "f"]

    >> a == ["a","b","c", "d", "e"]  # ya no es el original!
    => false

    >> a == ["a","b","c","d","e","f"]
    => true

    >> a.at(3)   # ¿por qué número empezamos a contar?

!SLIDE 

## Los Arrays guardan el orden de sus elementos

    @@@ ruby
    >> a = %w(knapp pantulis cantorrodista 
              vieron maguisso izgaka) 
    => ["knapp", "pantulis", "cantorrodista", 
           "vieron", "maguisso", "izgaka"] 

Pero se pueden reordenar

    @@@ ruby
    >> a.sort
    => ["cantorrodista", "izgaka", "knapp", 
        "maguisso", "pantulis", "vieron"] 
    >> a   # ¿qué devuelve esto?
    
!SLIDE 

# Ejercicio 1 

## Hacer un programa que rellene la primitiva

## Generar un array con los 6 números, sin que se repitan    

!SLIDE 

# Hash

* Es como un listín telefónico

      @@@ ruby
      telefonos = { 
        :juan_lupion => '670234502', 
        :ivan_lopez => '666869285',
        :natali => '28195810',
        :javieron => '8869867110
      }


!SLIDE 

* En Ruby 1.9.x se puede usar:

      @@@ ruby
      telefonos = {
        juan_lupion: '670234502',
        ivan_lopez: '66686285',
        nataly:  '28195810',
        javieron: '686928591'
      }

!SLIDE 

# Qué se puede hacer con Hashes

http://www.ruby-doc.org/core/classes/Hash.html

!SLIDE 

# Los hashes no guardan el orden de sus contenidos

      @@@ ruby
      hash1 = { :a => 1, :b => 2, :c => 3}
      hash2 = { :b => 2, :c => 3, :a => 1}

      hash1 == hash2
      => true

!SLIDE small

## Más cosas con hashes

    @@@ ruby
    telefonos.keys
    => [:juan_lupion, :ivan_lopez, :javieron] 

    telefonos[:javieron] 
    => "686928591"


    telefonos.sort
    ruby-1.8.7-head > telefonos.sort
    NoMethodError: undefined method `<=>' for :juan_lupion:Symbol
 	from (irb):2:in `<=>'
  	from (irb):2:in `sort'
	from (irb):2

Los hashes NO ORDENAN!!!

!SLIDE 

# Pero en Ruby 1.9.x sí

    @@@ ruby
    ruby-1.9.2-p0 > telefonos.sort
     => [[:ivan_lopez, "66686285"], 
         [:javieron, "686928591"], 
         [:juan_lupion, "670234502"]] 

!SLIDE bullets incremental smaller

# ¿Cuándo usar hashes y cuando arrays?

* Usaremos Arrays si nos interesa el orden en que se guardan las cosas
* Pero en los Hashes la búsqueda es más rápida que en un Array 
* (si me sé la clave)

!SLIDE 

# Funciones

     @@@ ruby
     def imprime(valor)
         puts "He recibido = #{valor}"
     end  
      
     imprime("Hola")
     
     imprime "Hola"   # es más claro!

!SLIDE 

# Ojo con lo que devuelves

      @@@ ruby
      def imprime(valor)
         puts "He recibido = #{valor}"
      end  

      cadena = imprime("HOLA")
      He recibido HOLA      

      cadena
      ==>   ## ? 


!SLIDE 

# Ojo con lo que devuelves

      @@@ ruby
      def imprime(valor)
         puts "He recibido = #{valor}"
         return true  # el quid de la cuestión
      end  

      cadena = imprime("HOLA")
      He recibido HOLA      

      cadena
      ==> true

!SLIDE 

# Puedo pasar todos los parámetros que yo quiera

      @@@ ruby
      def sumalos(arg1, arg2, arg3)
         arg1 + arg2 + arg3
      end

      sumalos(3,4,5)
      => 12
      sumalos 3,4,5 # no queda tan bonito
      => 12

!SLIDE smaller

# Puedo pasar **todos** los parámetros que yo quiera
  
* Splat operator 
    
      @@@ ruby
      def sumalos(*args)
         sum = 0
         args.each do |x|
           sum +=x
         end
         sum  # o return sum!  pero que no se olvide!
      end

      >> sumalos(3,4,5)
      => 12
      >> sumalos(3,4,5,25)
      => 37

!SLIDE smaller

# El splat funciona al revés!

      @@@ ruby
      >> mi_arr = [1,2,3,4,5,6,7,8]
      => [1, 2, 3, 4, 5, 6, 7, 8]
      >> sumalos(mi_arr) 
      TypeError: Array can't be coerced into Fixnum
	   from (irb):11:in `+'
	   from (irb):11:in `sumalos'
	   from (irb):11:in `each'
	   from (irb):11:in `sumalos'
	   from (irb):17
      >> sumalos(*mi_arr)
      => 36

Esto se usa un montón en Rails 

!SLIDE smaller

# Los hashes como parámetros molones!

     @@@ ruby
     def prueba(opts = {})
        o = {
          :a => 'amarillo',
          :b => 'bioleta',
          :c => 'colorado'
        }.merge(opts)   # Mirar qué hace Array#merge
        
        puts "#{o[:a]} #{o[:b]} #{o[:c]}"
     end  

!SLIDE smaller

# Los hashes en acción

     @@@ ruby
     prueba
     => amarillo bioleta colorado

     prueba({ :b => 'berenjena'})
     => amarillo berenjena colorado

     prueba :c => 'cyan', 
            :a => 'azul'   # BONUS COMBO WIN! 

     => azul bioleta cyan

!SLIDE smaller

# ¿Sabemos lo que es has_and_belongs_to_many?

    @@@ ruby
    class Post < ActiveRecord::Base
       belongs_to :site
       has_and_belongs_to_many :categories, 
                               :class_name => "Category", 
                               :join_table => "posts_categories"
    end

!SLIDE smaller

# Ahora sí lo sabemos

    def has_and_belongs_to_many(name, options = {}, &extension) 
       ... 
    end

!SLIDE 

# CONTROL DE FLUJO #

!SLIDE

## if ... then ... else ... end

     @@@ ruby
     if x < 5 then 
        wadus
     end

     if x < 5 then
        wadus
     else
        wudas
     end

!SLIDE  smaller

## unless ... then ... else ... end

    @@@ ruby
    unless x > 5 then 
       wudas
    end

    unless x > 5 then
       wudas
    else
       wadus
    end

Es lo mismo que 
    @@@ ruby
    if x <= 4 then
       wadus
    else
       wudas
    end

!SLIDE

## one liners!

    @@@ ruby
    
    wadus if x > 5 

    wadus unless x.nil?

!SLIDE

## Pero if ... then .. else ... end son expresiones

    @@@ ruby
    a = if x > 5 then 
         4
        else
         20
        end

    x = unless y > 15 then 4 else 10 end

!SLIDE smaller

## Operador ternario para programadores trastornados

     @@@ ruby

     a = (x > 5) ? 20 : 50

     puts "Tienes #{x} #{x==1 ? 'punto' : 'puntos'}"


No abusar de esto! Se complica y se vuelve ilegible fácilmente! 

!SLIDE 

## Selección múltiples

    @@@ ruby
    case expresion 
      when value1
         wadus1
      when value2
         wadus2
      else 
         wadus3
    end
       
!SLIDE

## Selección múltiple con cadenas
   
   Podemos poner expresiones regulares

    @@@ ruby     

    str = "Esta es una cadena"
    case str
      when "estono" 
         "Caso 1"
      when "estotampoco"
         "Caso 2"
      when /cadena/
         "Caso 3"
      else
         "Nada de lo anterior"
    end

!SLIDE
       
## Selección múltiple con números
  
  Podemos poner rangos

     @@@ ruby
     
     dado = rand(6)   # va de 0 a 5!
     puts case dado+1 
      when 1..3
        "Mala suerte, te ha salido un #{dado}"
      when 4..5
        "Salio un #{dado}"
      when 6
        "La repera! Te salió un #{dado}"
      end

!SLIDE

## Iteración en una lista de elementos 1

while

      @@@ ruby
      list = %w(pantuis natali vieron ivlo)

      i=0

      while i<list.size do
         puts list[i]
         i=i+1
      end
      

!SLIDE

## Iteración en una lista de elementos 2

until

      @@@ ruby
      list = %w(pantulis natali vieron ivlo)

      i=0

      until i==list.size do
         puts list[i]
         i=i+1
      end


!SLIDE

## Iteración en una lista de elementos 3

while en modificador

      @@@ ruby
      list = %w(pantulis natali vieron ivlo)

      i=0

      begin 
         puts list[i]
         i=i+1
      end while i< list.size

!SLIDE

## Iteración en una lista de elementos 4

until en modificador

      @@@ ruby
      list = %w(pantulis natali vieron ivlo)

      i=0

      begin 
         puts list[i]
         i=i+1
      end until i== list.size


!SLIDE

## Iteración en una lista de elementos 5

bucle for sobre el elemento

      @@@ ruby
      list = %w(pantulis natali vieron ivlo)

      for i in list
          puts i
      end


!SLIDE

## Iteración en una lista de elementos 6

Array#each

      @@@ ruby
      list = %w(pantulis natali vieron ivlo)

      list.each do |x|
        puts x
      end

!SLIDE

## Iteración en una lista de elementos 7

loop con while

      @@@ ruby
      list = %w(pantulis natali vieron ivlo)

      i=0
      n=list.size -1

      loop do 
         puts list[i]
         i+=1
         break if i > n
      end

!SLIDE

## Iteración en una lista de elementos 8

loop con until

      @@@ ruby
      list = %w(pantulis natali vieron ivlo)

      i=0
      n=list.size

      loop do 
         puts list[i]
         i+=1
         break unless i <= n
      end

!SLIDE
## Iteración en una lista de elementos 9

iterando con 'times'

      @@@ ruby
      list = %w(pantulis natali vieron ivlo)

      n=list.size

      n.times do |i|
       print list[i]
      end

!SLIDE
## Iteración en una lista de elementos 10

iterando con upto

      @@@ ruby
      list = %w(pantulis natali vieron ivlo)

      n=list.size

      0.upto(n) do |i|
       print list[i]
      end

!SLIDE
## Iteración en una lista de elementos 11

for con un rango

      @@@ ruby
      list = %w(pantulis natali vieron ivlo)

      n=list.size-1

      for i in 0..n do 
        puts list[i]
      end


 




