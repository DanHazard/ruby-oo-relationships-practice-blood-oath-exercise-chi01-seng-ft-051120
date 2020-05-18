# stuff about fervant believers

class Cult

  attr_reader :name, :location, :slogan, :founding_year

  @@all = []

  def initialize(name, location, slogan, founding_year)
    @name = name
    @location = location
    @slogan = slogan
    @founding_year = founding_year

    @@all << self
  end

  def recruit_follower(follower_instance)

    BloodOath.new(follower_instance, self, 2020)

  end

  def cult_population

  end

  def followers
    cult_oaths = BloodOath.all.select do |blood_oath_instance|
      blood_oath_instance.cult == self
    end
    cult_oaths.map do |blood_oath_instance|
      blood_oath_instance.follower
    end
  end

  def self.all
    @@all
  end

  def self.find_by_name(cult_name)
    self.all.find do |cult_instance|
      cult_instance.name == cult_name
    end

  end

  def self.find_by_location(cult_location)

    self.all.select do |cult_instance|
      cult_instance.name == cult_name
    end

  end

  def self.find_by_founding_year(year_int)

    self.all.select do |cult_instance|
      cult_instance.founding_year == year_int
    end
  end

end
