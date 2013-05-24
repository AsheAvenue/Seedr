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
  
end
