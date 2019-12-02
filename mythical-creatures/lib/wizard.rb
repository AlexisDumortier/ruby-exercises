class Wizard

  attr_reader :name, :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @cast_count = 0
  end

  def bearded?
    @bearded
  end

  def incantation(message)
    "sudo #{message}"
  end

  def rested?
    @cast_count < 3
  end

  def cast
    @cast_count += 1
    "MAGIC MISSILE!"
  end

end