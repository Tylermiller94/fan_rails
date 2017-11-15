class Subgenre < ActiveRecord::Base
  validates :name, :presence => true
  has_many :animes 
end
