module Seedr
  module Seedrable
    extend ActiveSupport::Concern
    
    included do
      
    end
    
    module ClassMethods
      def seedrable(options={})
        cattr_accessor :seedrable_columns
        self.seedrable_columns = options[:columns]
      end
      
      def seed
        seeded = self.new
        seeded.seedrable_columns.each do |col_name|
          col_name = col_name.to_s
          type = self.columns_hash[col_name].type.to_s
          if type == 'string'
            seeded.send("#{col_name}=",Seedr.random_string(12))
          elsif type == 'text'
            seeded.send("#{col_name}=",Seedr.random_sentences)
          elsif type == 'integer'
            seeded.send("#{col_name}=",Seedr.random_integer(2))
          elsif type == 'date'
            seeded.send("#{col_name}=",Seedr.date)
          end
        end
        seeded
      end
    end
    
  end
end
ActiveRecord::Base.send :include, Seedr::Seedrable