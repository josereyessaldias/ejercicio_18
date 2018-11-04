class Roulette
	attr_accessor :apuesta, :ruleta
	def initialize(apuesta, ruleta = (1..10).to_a)
		@apuesta = apuesta
		@ruleta = ruleta
	end

	def play
		puts "Mi apuesta es #{@apuesta}"
		puts "El número ruleta es: #{@ruleta.sample}"
	end

	def play_registrar
		rul = @ruleta.sample.to_i
		registro = File.new('roulette_history.txt', 'a')
		registro.puts "#{rul}"
		registro.close
		if rul == apuesta
			registro_gan = File.new('winners.txt', 'a')
			registro_gan.puts apuesta
			registro_gan.close
		end

		puts "Mi apuesta es #{@apuesta}"
		puts "El número ruleta es: #{rul}"

	end

	def historia
		archivo = File.open('roulette_history.txt', 'r')
		datos = archivo.read.split
		archivo.close
		datos.each do |i|
			i = i.gsub("\n","")
		end
		datos = datos.map(&:to_i)
		
		(1..10).each do |i|
			if datos.count(i) > 0
				puts "El número #{i} ha salido #{datos.count(i)} veces"
			end
		end
	end

end




mi_ap = Roulette.new(3)
mi_ap.play_registrar
mi_ap.historia
