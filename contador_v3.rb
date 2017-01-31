# Version 3.0_test
#Autor: Joao Vitor Fischer

#Version Notes:

#Reduzido número de Funções/Métodos.
#Método 'open' direto no parametro do Nokogiri
#doc.text.scan(word) (to_s.scan() anteriormente) por padrão não realiza leitura de comments nem de classes.
#Alterado .length para .size (Mais bonito pra hashes, arrays, etc.)

require 'open-uri'
require 'nokogiri'

class Contador	

	def initialize(url)
	  @url = url
	end

	def count(word, url)
	  doc = Nokogiri::HTML(open(url))
	  doc.css('head').remove
	  doc.text.scan(word).size
	end
end

url, word = ARGV
puts "Encontrado: #{Contador.new(url).count(word, url)} combinações."
