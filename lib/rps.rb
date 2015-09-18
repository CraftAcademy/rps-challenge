

#rock = 1
#paper = 2
#scissors = 3

def computers_choice
  rand(1..3)
end

def input_ok?(item)
  (item) == 'rock' || (item) == 'paper' || (item) == 'scissors' ? true : false
end

def play(item)
  if input_ok?(item)
    c = computers_choice
      if (item) == 'rock' && c == 1
        'Oavgjort'
      elsif (item) == 'rock' && c == 2
          'Du vann'
      elsif (item) == 'rock' && c == 3
        'Du förlorade'
      elsif (item) == 'paper' && c == 1
          'Du förlorade'
      elsif (item) == 'paper' && c == 2
        'Oavgjort'
      elsif (item) == 'paper' && c == 3
        'Du vann'
      elsif (item) == 'scissors' && c == 1
          'Du vann'
      elsif (item) == 'scissors' && c == 2
        'Du förlorade'
      elsif (item) == 'scissors' && c == 3
        'Oavgjort'
      end
  else
      'Wrong input'
  end
end