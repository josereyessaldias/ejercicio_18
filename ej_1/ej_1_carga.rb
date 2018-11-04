require_relative 'ej_1_class_Table.rb'

def carga(arch)

	archivo = File.open(arch, 'r')
	datos = archivo.readlines
	archivo.close

	linea = []
	datos.each do |i|
		i = i.gsub("\n","")
		linea << i.split(", ")
	end

	todas = []
	linea.each do |i|
		table = Table.new(i[0])
		i[1..-1].each do |e|
			table.ingreso << e.to_i
		end
		todas << table
	end

	todas
	
end