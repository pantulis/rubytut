

def funcion_con_dos_bloques(opts)
  
  unless RUBY_VERSION == "1.8.7" then
    puts "El bloque de los pares esta definido en #{opts[:pares].source_location.inspect}"
    puts "El bloque de los impares esta definido en #{opts[:impares].source_location.inspect}"
  end
  
  [1,2,3,4,5,6].each_with_index do |elemento,idx|
    if idx % 2 == 0 then
      opts[:pares].call(idx)
    else
      opts[:impares].call(idx)
    end
  end
end

funcion_con_dos_bloques :pares => Proc.new {|x| puts "El #{x} es par"},
                        :impares => Proc.new {|x| puts "El #{x} es impar"}




