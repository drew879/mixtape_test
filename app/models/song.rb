class Song < ActiveRecord::Base
  attr_accessible :name
  belongs_to :album
  belongs_to :artist
  has_and_belongs_to_many :mixtapes
  has_and_belongs_to_many :genres

  def artist_name
    artist.name if artist
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def album_name
    album.name if album
  end
  
  def album_name=(name)
    self.album = Album.find_or_create_by_name(name)
  end
end
