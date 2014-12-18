require "nokogiri"
require "open-uri"
require "csv"
url = "http://elclasificado.com/fortworth"


doc = Nokogiri::HTML(open(url))


	CSV.open("resultsForForthWorth.csv", "wb") do |csv|
	
	doc.css(".category-group-title").each do |item|
		csv << [item.text.tr("[()]+0-9", ""), item.text.tr("^0-9$", "")].collect(&:strip) 
	end 

	doc.css(".category-group-link").each do |tile|
 		csv << [tile.text.tr("[()]+0-9", ""), tile.text.tr("^0-9$", "")].collect(&:strip)
	end	
end  
 