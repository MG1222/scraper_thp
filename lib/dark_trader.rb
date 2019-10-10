require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'


def crazy_scrapper

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
# name
names_crypto = []
page.xpath("//tbody//td//span//a").each do |n| names_crypto << n.text end
# price
price_crypto = []
page.xpath("//td[5]//a").each do |pr| price_crypto << pr.content.delete('$').to_f end

scrapper = []
names_crypto.zip(price_crypto).each do |join|
	scrapper << {join[0] => join[1]}
 end
 return scrapper
end 
    
puts crazy_scrapper.inspect



 