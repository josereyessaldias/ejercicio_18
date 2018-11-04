require 'date'

class Course
	attr_accessor :curso, :inicio, :termino

	def initialize(curso,inicio,termino)
		@curso = curso
		@inicio = Date.parse(inicio)
		@termino = Date.parse(termino)
	end


end