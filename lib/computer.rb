class Computer

  attr_accessor :pick

  def pick
    @pick = [:rock, :paper, :scissors].sample
  end
end

