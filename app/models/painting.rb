class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
  sum = @@all.map { |paint| paint.price }
  sum.inject(:+)
  end


end
