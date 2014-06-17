require 'rspec'
require_relative '../lib/perro.rb'

describe 'Ordenamiento de perros' do

	it "deberia retornar [pluto, lazy, doberman] cuando pluto.edad = 4, lazy.edad = 8, doberman.edad = 9" do
		doberman = Perro.new
		doberman.edad = 9

		lazy = Perro.new
		lazy.edad = 8

		pluto = Perro.new
		pluto.edad = 4

		mis_perros = [doberman, lazy, pluto]

		perros_ordenados = Sort.dog(mis_perros)

		perros_ordenados[0].should equal(pluto)
		perros_ordenados[1].should equal(lazy)
		perros_ordenados[2].should equal(doberman)
	end

	it "deberia retornar [pluto, doberman, lazy] cuando la edad de pluto y lazy son 6 y doberman.edad = 7 " do
		doberman = Perro.new
		doberman.edad = 7

		lazy = Perro.new
		lazy.edad = 6

		pluto = Perro.new
		pluto.edad = 6

		mis_perros = [lazy, doberman, pluto]

		perros_ordenados = Sort.dog(mis_perros)

		perros_ordenados[0].should equal(lazy)
		perros_ordenados[1].should equal(pluto)
		perros_ordenados[2].should equal(doberman)
	end

	it "deberia retornar [lazy, pluto, doberman] cuando los pesos doberman = 78, pluto = 72, lazy = 64 " do
		doberman = Perro.new
		doberman.peso = 78

		lazy = Perro.new 
		lazy.peso = 64

		pluto = Perro.new
		pluto.peso = 72

		mis_perros = [doberman, lazy, pluto]

		perros_ordenados = Sort.dog(mis_perros)

		perros_ordenados[0].should equal(lazy)
		perros_ordenados[1].should equal(pluto)
		perros_ordenados[2].should equal(doberman)
	end

	it "deberia retornar [pluto, doberman, lazy, snoopy] comparando con distintos pesos y edad" do
		doberman = Perro.new
		doberman.edad = 8
		doberman.peso = 78

		pluto = Perro.new
		pluto.edad = 6
		pluto.peso = 79

		lazy = Perro.new
		lazy.edad = 8
		lazy.peso = 80

		snoopy = Perro.new
		snoopy.edad = 8
		snoopy.peso = 80

		mis_perros = [snoopy, doberman, pluto, lazy]

		perros_ordenados = Sort.dog(mis_perros)		

		perros_ordenados[0].should equal(pluto)
		perros_ordenados[1].should equal(doberman)
		perros_ordenados[2].should equal(snoopy)
		perros_ordenados[3].should equal(lazy)
	end

	it "cuando ordenamos por color con el criterio blanco>negro>marron>gris, deberia retornar [snoopy, doberman, pluto, lazy]" do
		doberman = Perro.new
		doberman.color = 'negro'

		pluto = Perro.new
		pluto.color = 'marron'

		lazy = Perro.new
		lazy.color = 'gris'

		snoopy = Perro.new
		snoopy.color = 'blanco'

		mis_perros = [lazy, pluto, snoopy, doberman]

		perros_ordenados = Sort.dog(mis_perros)

		perros_ordenados[0].should equal(snoopy)
		perros_ordenados[1].should equal(doberman)
		perros_ordenados[2].should equal(pluto)
		perros_ordenados[3].should equal(lazy)
	end
end