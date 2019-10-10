require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

def crypto
	page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))

end	