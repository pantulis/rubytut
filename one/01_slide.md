!SLIDE
# QUE ES RUBY #

!SLIDE bullets incremental transition=fade

# Ruby es un lenguaje interpretado #

* todo es un objeto
* todo se evalúa como una expresión
* interpretado
* muy alto nivel

!SLIDE

# Palabras clave 

<code><pre>
BEGIN END alias and begin break case 
class def defined do else elsif end 
ensure false for if in module next nil 
not or redo resscue retry return 
self super  then true undef unless 
until when while yield
</pre></code>


!SLIDE 

# El clásico "Hola mundo!"

Crear un archivo llamado hola.rb: 

    #!/usr/bin/env ruby
    puts "Hola wadus!"

Ejecutar esto en la misma carpeta 

    chmod a+x hola.rb
    mv hola.rb hola
    ./hola
    Hola wadus!
    

!SLIDE 

# El lado oscuro de Ruby

<code>
method(:puts).call "Hola wadus!"
</code>

!SLIDE bullets incremental

# Comentarios 

De una línea

<code><pre>
wadus = wadus + 1   # le sumo 1 a wadus
</pre></code>

De varias 

<code><pre>
=begin
Me gusta poner comentarios largos porque
explican mejor el código
=end
</pre></code>

!SLIDE bullets incremental

# Tipos de datos simples

* numéricos
  - <code>i = 27</code>
* caracteres
  - <code>c = ?x</code>
* cadenas
  - <code>wadus = "Hola me llamo Wadus"</code>

!SLIDE 

# Cadenas

Se define con comillas dobles

    str = "Las cadenas son así de fáciles"

o simples

    otra_str = str + ' y difíciles'

!SLIDE

# Interpolación de cadenas

<small>
    str = "cadenas"
    otra_string = "Las #{str} son así \
    de fáciles"
    libro = "Las #{1000+1} noches"
    esto_peta = 'Las #{str} son así \
                 de difíciles'
</small>

!SLIDE

# Interpolando

    1.upto(100).each do |x|
       if x % 2 == 1 then 
          puts "El #{x} es impar"  
       end 
    end

!SLIDE

# ¿Qué se puede hacer con cadenas?

http://ruby-doc.org/core/classes/String.html

!SLIDE

# Ejecución de comandos

<pre><code>
    result = `ps -ef`
</code></pre>


<pre><code>
    %x[uname -a]
</pre></code>


!SLIDE

# Expresiones regulares

## Esas para otro día! ;)

!SLIDE 

# Arrays

* Pueden contener datos de cualquier tipo
* Tantos elementos como se quiera


<pre>
 >> otro = ["a", "b", "c", "d"]
 => ["a", "b", "c", "d"]
 >> arr = %w(a b c d)
 => ["a", "b", "c", "d"]
 >> arr + otro
 => ["a", "b", "c", "d", "a", "b", "c", "d"]
 >> arr[3]
 => "d"
</pre>

!SLIDE

## Qué se puede hacer con arrays

http://www.ruby-doc.org/core/classes/Array.html

!SLIDE

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

!SLIDE 

    >> a
    => ["a", "b", "c", "d", "e"]

    >> a << "f"
    => ["a", "b", "c", "d", "e", "f"]

    >> a == ["a","b","c"]
    => false

    >> a == ["a","b","c","d","e","f"]
    => true

    >> a.at(3)
    => "d"

!SLIDE 

Los Arrays se pueden ordenar SIEMPRE

    >> a = %w(knapp pantulis cantorrodista vieron maguisso izgaka) 
    => ["knapp", "pantulis", "cantorrodista", "vieron", "maguisso", "izgaka"] 

    >> a.sort
    => ["cantorrodista", "izgaka", "knapp", "maguisso", "pantulis", "vieron"] 
  
!SLIDE 

# Ejercicio 1 

## Hacer un programa que rellene la primitiva

## Generar un array con los 6 números, sin que se repitan    

!SLIDE 

# Hash

* Es como un listín telefónico

      telefonos = { 
        :juan_lupion => '670234502', 
        :ivan_lopez => '666869285',
        :javieron => '6869867110
      }


!SLIDE 

* En Ruby 1.9.x se puede usar:

      telefonos = {
        juan_lupion: '670234502',
        ivan_lopez: '66686285',
        javieron: '686928591'}

!SLIDE 

# Qué se puede hacer con Hashes

http://www.ruby-doc.org/core/classes/Hash.html

!SLIDE

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

!SLIDE 

# Pero en Ruby 1.9.x sí

    ruby-1.9.2-p0 > telefonos.sort
     => [[:ivan_lopez, "66686285"], 
         [:javieron, "686928591"], 
         [:juan_lupion, "670234502"]] 

!SLIDE bullets incremental

# ¿Cuándo usar hashes y cuando arrays?

* Usaremos Arrays si nos interesa el orden en que se guardan las cosas
* En los Hashes la búsqueda es más rápida que en un Array
