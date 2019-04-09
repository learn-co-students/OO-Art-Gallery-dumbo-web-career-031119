class Artist

  attr_reader :name, :years_experience, :painting

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |paint| paint.artist == self}
  end

  def galleries
    paintings.map { |gall| gall.gallery}
  end

  def cities
    galleries.map { |place|  place.city }
  end

  def self.total_experience
    total_xp = @@all.map { |xp| xp.years_experience }
    total_xp.inject(:+)
  end

  def self.most_prolific
    self.all.max_by {|artist| artist.years_experience/artist.paintings.length.to_f}
  end
  def create_painting(title, price, gallery)
    Painting.new
  end
end
