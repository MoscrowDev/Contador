
#Contador de Palavras
#Autor: João Vitor Fischer Bez

require 'open-uri'

class Contador

  def initialize(url)
    @url = url
  end

  def scan(word)
    open(@url).read.scan(word)
  end
end

url, word = ARGV

puts "Achei #{Contador.new(url).scan(word).length} palavras dentro da página indicada."