class Gallery

  attr_reader :name, :city, :painting

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|paint| paint.gallery == self}
  end

  def artist
    paintings.map(&:artist).uniq
  end

  def artist_name
    artist.map(&:name)
  end
  def most_expensive_painting
    paintings.max_by { |piece| piece.price}
  end
end
