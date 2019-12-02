class Ogre
  
  attr_reader :name, :home, :swings, :encounter_counter

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(person)
    person.encounter_counter += 1
    @encounter_counter += 1
    swing_at(person) if (person.encounter_counter % 3).zero?
    person.knocked_out = true if (person.encounter_counter % 6).zero?
  end

  def swing_at(_person)
    @swings += 1
  end

  def apologize(person)
    person.knocked_out = false
  end

end