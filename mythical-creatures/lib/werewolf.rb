class Werewolf

  attr_reader :name, :location

  def initialize(name, location = "Paris")
    @name = name
    @location = location 
    @human = true
    @hungry = false
  end

  def change!
    @human = !@human
    @hungry = true if wolf?
  end

  def wolf?
    !@human
  end

  def human?
    @human
  end

  def hungry?
    @hungry
  end

  def consume(victim)
    victim.status = :dead if wolf? 
    @hungry = false
  end

end