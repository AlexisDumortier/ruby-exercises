class Centaur

  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name 
    @breed = breed 
    @cranky = false
    @standing = true
    @shoot_count = 0
    @rested = false
    @sick = false
  end

  def shoot
    if (cranky? || laying?)
      'NO!' 
    else 
      @shoot_count += 1
      'Twang!!!'
    end
  end

  def run
    if cranky? || laying?
      'NO!'
    else
      @cranky = true
      'Clop clop clop clop!!!'
    end
  end

  def cranky?
    return true if @shoot_count > 2

    @cranky
  end

  def standing?
    @standing
  end

  def sleep
    standing? ? 'NO!' : @cranky = false  
  end

  def lay_down
    @standing = false
  end

  def laying? 
    !@standing
  end

  def sick?
    @sick
  end

  def stand_up
    @standing = true
  end

  def rested?
    @rested
  end

  def drink_potion
    if laying?
      'NO!'
    elsif rested?
      @sick = true
    else
      @rested = true
    end
  end

end