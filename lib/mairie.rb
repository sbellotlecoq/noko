require "nokogiri"
require "open-uri"

  info = {}
  page = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/95/avernes.html"))
  email = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
  nom = page.xpath("/html/body/div/main/section[1]/div/div/div/h1").text
  info[nom] = email
  puts info


