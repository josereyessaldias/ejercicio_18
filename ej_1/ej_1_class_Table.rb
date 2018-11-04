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