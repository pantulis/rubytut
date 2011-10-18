def bola
  rand(46)+1
end
def primitiva
  resultado = []
  
  for i in 1..7 do
    b = bola while resultado.include?(b)
    resultado << b
  end

  resultado

end

200.times do 
  puts primitiva.inspect
end