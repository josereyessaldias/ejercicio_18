require_relative 'carga.rb'

def previo(arch,fecha = Date.today.to_s)
	raise ArgumentError.new('La fecha mayor al 2018-01-01') if Date.parse(fecha) > Date.parse('2018-01-01')
	puts "Curso que comienzan antes del #{fecha}:"
	carga(arch).each do |i|
		puts i.curso if i.inicio < Date.parse(fecha)
	end
end

def posterior(arch,fecha = Date.today.to_s)
	raise ArgumentError.new('La fecha mayor al 2018-01-01') if Date.parse(fecha) > Date.parse('2018-01-01')
	puts "Curso que terminan después del #{fecha}:"
	carga(arch).each do |i|
		puts i.curso if i.termino > Date.parse(fecha)
	end
end
