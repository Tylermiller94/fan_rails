class Anime < ActiveRecord::Base
  validates :name, :content, :subgenre_id, :presence => true
  belongs_to :subgenres
end
