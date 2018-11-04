require_relative 'class_Course.rb'

def carga(arch)

	archivo = File.open(arch, 'r')
	datos = archivo.readlines
	archivo.close

	linea = []
	datos.each do |i|
		i = i.gsub("\n","")
		linea << i.split(", ")
	end

	table = []
	linea.each do |i|
		table << Course.new(i[0],i[1],i[2])
	end

	table
	
end
