require "Seedr/version"

module Seedr
  
  def self.random_string(length=1)
    
  end
  
  def self.first_name
    ['Joe','Rob','Tim','John','Matt','Gob','Ricky','Bubbles','Walt','Sally','Natalie','Jane','Oscar','Lupe','Benjamin','Lindsay'].sample
  end
  
  def self.last_name
    ['Bluth','Morgan','Pinkman','Skywalker','Lahee','Griswald','Farakahn','Greenpoint','Seinfeld','Simpson','Briggs','Baxter'].sample
  end
  
  def self.middle_initial
    Array('A'..'Z').sample
  end
  
  def self.username
    ['bewbewbew002','murphdawg23','captain0bv3us','username123','jesuslovesme','grannyPants419','art_vandelay','theRealMacafee','iLoveScreech1492','thugLife187'].sample
  end
  
  def self.full_name
    "#{self.first_name} #{self.middle_initial}. #{self.last_name}"
  end
  
  def self.company_name
    word1 = ['ACME', 'American', 'International', 'Blue', "Dad's", 'Stargazer', 'East River', 'Nissan', 'Red', 'Standard']
    word2 = ['Computer', 'Plumbing', 'Construction', 'Welding', 'Mercantile', 'Design', 'Refrigeration', 'Shipping', 'Culinary', 'Dry Goods']
    word3 = [' Company', ' Society', ' Association', ' Union', ' Supply', '', '', '', '', '']
    word4 = [' of North Carolina', ', Inc.', ', LLC', '', '', '', '', '', '']
    "#{word1.sample} #{word2.sample}#{word3.sample}#{word4.sample}"
  end
  
  def self.email
    username = ['bob', 'horace', 'jimmy', 'info', 'noreply', 'stuff', 'juan', 'daisuke', 'veronica', 'marge', 'inquiries']
    host = ['gmail', 'hotmail', 'yahoo', 'nytimes', 'runners', 'hotdating', 'cnn', 'maryjanetimes', 'nyc', 'navy']
    tld = ['com', 'net', 'io', 'gov', 'mil', 'co.uk', 'es']
    "#{username.sample}@#{host.sample}.#{tld.sample}"
  end
  
  def self.address_line_1
    direction = ['N.', 'S.', 'E.', 'W.', 'North', 'South', 'East', 'West']
    street = ['First', 'Third', 'Franklin', 'Lakeland', 'Hillsborough', 'Pennsylvania', 'Cardigan', 'High', 'China Lake', 'Columbia']
    type = ['St.', 'Ave.', 'Blvd.', 'Rd.', 'Way', 'Court']
    "#{Random.rand(1000)} #{direction.sample} #{street.sample} #{type.sample}"
  end
  
  def self.address_line_2
    ["Apt. #{Random.rand(10) + 1}#{Array('A'..'G').sample}", "Suite #{Random.rand(90) + 1}", "#{Random.rand(10) + 4}th Floor"].sample
  end
  
  def self.city 
    ['Lincoln', 'Orange', 'Ridgecrest', 'Springville', 'Laserville', 'Oak Ridge', 'Nashville', 'Los Gatos', 'Shreveport'].sample
  end
  
  def self.state
    ['CA', 'NC', 'OK', 'NY', 'UT', 'MT', 'OR', 'AZ', 'SC', 'KY', 'WV', 'VA', 'ME', 'FL'].sample
  
end
