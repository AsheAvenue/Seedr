require "Seedr/version"
require "titleize"

module Seedr
  
  # RANDOMS
  
  def self.random_string(length=1)
    range = [*'a'..'z', *'A'..'Z']
    Array.new(length){range.sample}.join
  end
  
  def self.random_integer(length=1)
    range = [*0..9]
    Array.new(length){range.sample}.join
  end
  
  
  # PROFILE
  
  def self.first_name
    ['Joe','Rob','Tim','John','Matt','Gob','Ricky','Bubbles','Walt','Sally','Natalie','Jane','Oscar','Lupe','Benjamin','Lindsay'].sample
  end
  
  def self.last_name
    ['Bluth','Morgan','Pinkman','Skywalker','Lahee','Griswald','Farakahn','Greenpoint','Seinfeld','Simpson','Briggs','Baxter'].sample
  end
  
  def self.middle_initial
    range = [*'A'..'Z']
    range.sample
  end
  
  def self.username
    ['bewbewbew002','murphdawg23','captain0bv3us','username123','jesuslovesme','grannyPants419','art_vandelay','theRealMacafee','iLoveScreech1492','thugLife187'].sample
  end
  
  def self.full_name
    "#{self.first_name} #{self.middle_initial}. #{self.last_name}"
  end
  
  def self.email
    username = ['bob', 'horace', 'jimmy', 'info', 'noreply', 'stuff', 'juan', 'daisuke', 'veronica', 'marge', 'inquiries']
    host = ['gmail', 'hotmail', 'yahoo', 'nytimes', 'runners', 'hotdating', 'cnn', 'maryjanetimes', 'nyc', 'navy']
    tld = ['com', 'net', 'io', 'gov', 'mil', 'co.uk', 'es']
    "#{username.sample}@#{host.sample}.#{tld.sample}"
  end
  
  def self.phone_number(separator='')
    "#{self.random_integer(3)}#{separator}#{self.random_integer(3)}#{separator}#{self.random_integer(4)}"
  end
  
  def self.company_name
    word1 = ['ACME', 'American', 'International', 'Blue', "Dad's", 'Stargazer', 'East River', 'Nissan', 'Red', 'Standard']
    word2 = ['Computer', 'Plumbing', 'Construction', 'Welding', 'Mercantile', 'Design', 'Refrigeration', 'Shipping', 'Culinary', 'Dry Goods']
    word3 = [' Company', ' Society', ' Association', ' Union', ' Supply', '', '', '', '', '']
    word4 = [' of North Carolina', ', Inc.', ', LLC', '', '', '', '', '', '']
    "#{word1.sample} #{word2.sample}#{word3.sample}#{word4.sample}"
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
  
  def self.state(abbreviation=FALSE)
    if abbreviation
      ['CA', 'NC', 'OK', 'NY', 'UT', 'MT', 'OR', 'AZ', 'SC', 'KY', 'WV', 'VA', 'ME', 'FL'].sample
    else
      ['California', 'North Carolina', 'Oklahoma', 'New York', 'Utah', 'Montana', 'Oregon', 'Arizona', 'South Carolina', 'Kentucky', 'West Virginia', 'Virginia', 'Maine', 'Florida'].sample
    end
  end
  
  def self.province(abbreviation=FALSE)
    if abbreviation
      ['AB', 'SK', 'BC', 'NB', 'ON', 'QC', 'NS'].sample
    else
      ['Alberta', 'Saskatchewan', 'British Columbia', 'New Brunswick', 'Ontario', 'Quebec', 'Nova Scotia'].sample
    end
  end
  
  def self.country(abbreviation=FALSE)
    if abbreviation
      ['US', 'MX', 'CA', 'FR', 'ES', 'JP', 'SG', 'NM'].sample
    else
      ['United States', 'Mexico', 'Canada', 'France', 'Spain', 'Japan', 'Singapore', 'Namibia'].sample
    end
  end
  
  
  # EDITORIAL
  
  def self.category
    ['News', 'Entertainment', 'Sports', 'Music', 'Technology', 'World', 'Arts', 'Real Estate', 'Style', 'Business', 'Finance', 'Classifieds', 'Travel', 'Food'].sample
  end
  
  def self.article_type
    ['Text', 'Video', 'Gallery', 'Poll'].sample
  end
  
  def self.series
    ['101', 'Grow', 'Art Talk', 'Fringes', 'Noisey Raps'].sample
  end
  
  def self.title
    words = ['sed', 'posuere', 'consectetur', 'est', 'at' 'lobortis', 'lorem', 'ipsum', 'dolor', 'sit', 'amet', 'consectetur', 'adipiscing' 'elit', 'nullam', 'id', 'dolor', 'id', 'nibh', 'ultricies', 'vehicula', 'ut', 'id', 'elit', 'maecenas', 'sed', 'diam', 'eget', 'risus', 'varius', 'blandit', 'sit', 'amet', 'non', 'magna']
    random_number_of_words = Random.rand(5) + 3
    "#{words.shuffle[0..(Random.rand(5) + 3)].join(" ").titleize}."
  end
  
  def self.body
    words = ['sed', 'posuere', 'consectetur', 'est', 'at' 'lobortis', 'lorem', 'ipsum', 'dolor', 'sit', 'amet', 'consectetur', 'adipiscing' 'elit', 'nullam', 'id', 'dolor', 'id', 'nibh', 'ultricies', 'vehicula', 'ut', 'id', 'elit', 'maecenas', 'sed', 'diam', 'eget', 'risus', 'varius', 'blandit', 'sit', 'amet', 'non', 'magna']
    random_number_of_paragraphs = Random.rand(6) + 1
    random_number_of_sentences = Random.rand(6) + 1
    random_number_of_words = Random.rand(10) + 3
    result = ""
    random_number_of_paragraphs.times do
      random_number_of_sentences.times do
        sentence = "#{words.shuffle[0..random_number_of_words].join(" ")}. "
        sentence = sentence.slice(0,1).capitalize + sentence.slice(1..-1)
        result += sentence
      end
      result += "\n"
    end
    result
  end
    
end
