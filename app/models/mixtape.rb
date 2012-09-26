class Mixtape < ActiveRecord::Base
  attr_accessible :name, :song_ids
  has_and_belongs_to_many :songs
  has_and_belongs_to_many :users  
  validates :name, :presence => true
end
