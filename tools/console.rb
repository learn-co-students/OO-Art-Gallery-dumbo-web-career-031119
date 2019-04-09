require_relative '../config/environment.rb'

bob = Artist.new("bob", 30)
ann = Artist.new("ann", 10)
dolly = Artist.new("dolly", 15)
llama = Artist.new("llama", 300)

gal = Gallery.new("moma", "new york")
gal2 = Gallery.new("nat", "NYC")
gal3 = Gallery.new("bk gallary", "BK")

Painting.new("bigz", 700, bob, gal)
Painting.new("trill", 100_000, dolly, gal2)
Painting.new("zill", 7_000, llama, gal3)
Painting.new("tills", 9_000,bob, gal)
Painting.new("pills", 500, ann, gal2)
Painting.new("bills", 1, ann, gal3)
Painting.new("cat", 1_000_000, llama, gal )

binding.pry

puts "Bob Ross rules."
