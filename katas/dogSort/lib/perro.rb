#perro.rb

class Perro
	attr_accessor :edad, :peso, :color
end

class Sort
	def self.dog(lista)
		orden_color = [ 'blanco', 'negro', 'marron', 'gris']
		lista.sort! do |a, b| 
			case 
			when a.edad != b.edad then a.edad <=> b.edad
			when a.peso != b.peso then a.peso <=> b.peso
			else orden_color.index(a.color) <=> orden_color.index(b.color)
			end
		end
	end
end