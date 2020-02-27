require('pry-byebug')

class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names
    @planets.map {|planet| planet.name }
  end

  def get_planet_by_name(planet_name)
    @planets.map.find(planet_name) {|planet| planet.name == planet_name }
  end

  def get_largest_planet
  return @planets.max_by {|planet| planet.diameter}
  end

  def get_smallest_planet
  return @planets.min_by {|planet| planet.diameter}
  end

  def get_planets_with_no_moons
    return @planets.select {|planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(number)
    planets = @planets.select {|planet| planet.number_of_moons > number }
    planets.map {|planet| planet.name }
  end

    def get_number_of_planets_closer_than(distance)
      planets =  @planets.select {|planet| planet.distance_from_sun < distance}
      return planets.count
    end

    def get_total_number_of_moons
      moons = @planets.map {|planet| planet.number_of_moons}
      return moons.sum
    end

    def get_planet_names_sorted_by_increasing_distance_from_sun
      planets = @planets.sort_by {|planet| planet.distance_from_sun }
      planets.map {|planet| planet.name }
    end

    def get_planet_names_sorted_by_size_decreasing
      planets = @planets.sort_by {|planet| planet.diameter }
      result = planets.map {|planet| planet.name }
      return result.reverse
    end

end
