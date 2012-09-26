class Album < ActiveRecord::Base
  attr_accessible :name, :songs_attributes
  has_many :songs
  has_many :artists, :through => :songs
  validates :name, :presence => true
  accepts_nested_attributes_for :songs, :allow_destroy => true
end
