require 'open-uri'
require 'nokogiri'

class Contador
	attr_reader :url	

	def initialize(url)
	  @url = url
	end

	def count(word)
	  doc = Nokogiri::HTML(open(url))
	  doc.css('head').remove
	  doc.text.scan(/#{word}/i).size
	end
end
