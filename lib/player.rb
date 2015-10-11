class Player

  attr_accessor :name, :pick

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def make_pick(value)
    @pick = value
  end
end