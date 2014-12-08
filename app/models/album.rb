class Album < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, {:headers => true, :header_converters => :symbol, :converters => :all}) do |row|
    new_hash = {}
    row.to_hash.each_pair do |k,v|
    new_hash.merge!({k.downcase => v}) 
      end
      Album.create!(new_hash)
    end
  end

end