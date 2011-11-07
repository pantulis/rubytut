class Person
  attr_accessor :nombre, :apellidos
  @@count = 0

  def initialize(nombre, apellidos)
    @@count += 1
    @nombre = nombre
    @apellidos = apellidos
  end

  def self.count
    @@count
  end

  def self.salute
    puts "Hola!"
  end
  def cuantas
    Person.count
  end

  def method_missing(method)
     puts "Ay, qué sofoc, no se que es #{method}, me demayo"
  end
end

javi = Person.new('javi', 'sanchez')
puts Person.count
ivan = Person.new('ivan','lopez')
puts Person.count
natali = Person.new('nelly','nataly')
puts Person.count
juan = Person.new('juan','lupion')
juan.wadus
