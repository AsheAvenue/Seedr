require "Seedr/version"

module Seedr
  
  def self.first_name
    "Joe"
  end
  
  def self.last_name
    "Smith"
  end
  
  def self.name
    "#{self.first_name} #{self.last_name}"
  end
  
  def self.company_name
    word1 = ['ACME', 'American', 'International', 'Blue', "Dad's", 'Stargazer', 'East River', 'Nissan', 'Red', 'Standard']
    word2 = ['Computer', 'Plumbing', 'Construction', 'Welding', 'Mercantile', 'Design', 'Refrigeration', 'Shipping', 'Culinary', 'Dry Goods']
    word3 = ['Company', 'Society', 'Association', 'Union', 'Supply', '', '', '', '', '']
    word4 = ['of North Carolina', ', Inc.', 'LLC', '', '', '', '', '', '']
    "#{word1.sample} #{word2.sample} #{word3.sample} #{word4.sample}"
  end
  
  def self.email
    username = ['bob', 'horace', 'jimmy', 'info', 'noreply', 'stuff', 'juan', 'daisuke', 'veronica', 'marge', 'inquiries']
    host = ['gmail', 'hotmail', 'yahoo', 'nytimes', 'runners', 'hotdating', 'cnn', 'maryjanetimes', 'nyc', 'navy']
    tld = ['com', 'net', 'io', 'gov', 'mil', 'co.uk', 'es']
    "#{username.sample}@#{host.sample}.#{tld}"
  end
end
