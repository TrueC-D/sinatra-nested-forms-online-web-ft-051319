class Ship
  attr_accessor :name, :type, :booty_attributes
  
  @@all = []
  
  def initialize(ship)
    @name = ship[:name]
    @type = ship[:type]
    @booty_attributes = ship[:booty_attributes]
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.clear
    @@all.clear
  end
end