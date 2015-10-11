class Computer

  attr_accessor :pick

  def initialize
    @pick = [:rock, :paper, :scissors].sample
  end
end

