class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names
    expected_names = @planets.map { |planet| planet.name}
  end

  def get_planet_by_name(planet_name)
    @planets.find {|planet| planet.name == planet_name}
  end

  def get_largest_planet
    diameter_array = @planets.map {|planet| planet.diameter}
    @planets.find { |planet| planet.diameter == diameter_array.max()}
  end

  def get_smallest_planet
    diameter_array = @planets.map {|planet| planet.diameter}
    @planets.find { |planet| planet.diameter == diameter_array.min()}
  end

  def get_planets_with_no_moons
    @planets.find_all{ |planet| planet.number_of_moons == 0 }
  end

  def get_planets_with_more_moons(number)
    expected_names = @planets.find_all {|planet| planet.number_of_moons > number}
    expected_names.map {|names| names.name}
  end

  def get_number_of_planets_closer_than(number)
     closest_planets = @planets.find_all {|planet| planet.distance_from_sun <= number}

     closest_planets.count
  end

  def get_total_number_of_moons
    total_moons_array = @planets.map {|planet| planet.number_of_moons}
    total_moons_array.reduce(0) {|sum, planet| sum + planet}
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun
    distances_array = @planets.map {|planet| planet}

    distances_array.map{|planet| planet.distance_from_sun()}
  end


end
