#Contador -- Version 2.0
#Autor: João Vitor Fischer Bez

require 'open-uri'
require 'nokogiri'

class Contador

	def initialize(url)
		@url = open(url)
	end

	def decapitacao
		html = Nokogiri::HTML(@url)       #Exec do Nokogiri na URL já aberta no initialize
		html.css('head').remove           #Muitos chamados das 'word' em <meta>, cortar <head> fora facilita contagem.
		html.css('comment()').remove      #"Claro" possui 1 comment no body que implica na contagem real.
		@new_url = html.to_s		
	end

	def scan(word)
		new_url.scan(word)
	end

end

url, word = ARGV

 puts "Encontrado: #{Contador.new(url).decapitacao.scan(word).length} combinações."