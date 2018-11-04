class Table
	attr_accessor :mesa, :ingreso

	def initialize(mesa,ingreso = [])
		@mesa = mesa
		@ingreso = ingreso
	end

	def ingreso_total
		total = 0
		@ingreso.each do |i|
			total += i
		end
		total
	end

	def ingreso_prom
		puts "El ingreso promedio de la mesa #{mesa} es #{self.ingreso_total/self.ingreso.length}"
	end

	def maximo
		puts "El mayor valor recaudado de la mesa #{mesa} es #{ingreso.max}, que corresponde al día #{ingreso.index(ingreso.max)+1}"
	end

end

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
	

calcula_max('casino.txt')
calcula_prom('casino.txt')

