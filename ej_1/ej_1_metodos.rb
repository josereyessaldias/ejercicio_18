require_relative 'ej_1_carga.rb'

def calcula_max(arch)
	carga(arch).each do |i|
		i.maximo
	end
end

def calcula_prom(arch)
	carga(arch).each do |i|
		i.ingreso_prom
	end
end