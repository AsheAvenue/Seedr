require "Seedr/version"

module Seedr
  
  def self.first_name
    first_names = ['Joe','Rob','Tim','John','Matt','Gob','Ricky','Bubbles','Walt','Sally','Natalie','Jane','Oscar','Lupe','Benjamin','Lindsay']
    first_names.sample
  end
  
  def self.last_name
    last_names = ['Bluth','Morgan','Pinkman','Skywalker','Lahee','Griswald','Farakahn','Greenpoint','Seinfeld','Simpson','Briggs','Baxter']
    last_names.sample
  end
  
  def self.middle_initial
    middle_initials = ['A'..'Z']
    middle_initials.sample
  end
  
  def self.username
    user_names = ['bewbewbew002','murphdawg23','captain0bv3us','username123','jesuslovesme','grannyPants419','art_vandelay','theRealMacafee','iLoveScreech1492','thugLife187']
    user_names.sample
  end
  
  def self.full_name
    "#{self.first_name} #{self.middle_initial}. #{self.last_name}"
  end
  
  def self.company_name
    word1 = ['ACME', 'American', 'International', 'Blue', "Dad's", 'Stargazer', 'East River', 'Nissan', 'Red', 'Standard']
    word2 = ['Computer', 'Plumbing', 'Construction', 'Welding', 'Mercantile', 'Design', 'Refrigeration', 'Shipping', 'Culinary', 'Dry Goods']
    word3 = ['Company', 'Society', 'Association', 'Union', 'Supply', '', '', '', '', '']
    word4 = ['of North Carolina', ', Inc.', 'LLC', '', '', '', '', '', '']
    "#{word1.sample} #{word2.sample} #{word3.sample} #{word4.sample}"
  end
  
end
