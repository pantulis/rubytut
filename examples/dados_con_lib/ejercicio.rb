require 'cubilete/init'

cubilete = Cubilete.new
cubilete.run(:times => 3000)
cubilete.analyze{|d1,d2,d3| (d1 == 6) && (d2 == 6) && (d3 == 6)}

