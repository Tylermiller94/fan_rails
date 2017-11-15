class Subgenre < ActiveRecord::Base
  validates :name, :presence => true
end
