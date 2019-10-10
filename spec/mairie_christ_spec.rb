require_relative '../lib/mairie_christ'

describe "the get_town_list_mail method" do
	noko = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
	it "countains Arthies" do
		expect(get_town_list_mail(noko).any? {"ARTHIES"==nil}).to eq(false)
	end
	it "should be an array" do
	expect(get_city_email_final(noko).instance_of?Array).to eq(true)
	end
end