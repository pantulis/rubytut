
def primitiva
  bolas = (1..46).to_a     # [1,2,3,4,5,6,7,... , 46]
  resultado = []

  6.times do              
    resultado << bolas.delete_at(rand(bolas.length))    # delete_at devuelve el elemento eliminado
  end

  resultado  
end

200.times do 
  puts primitiva.inspect
end