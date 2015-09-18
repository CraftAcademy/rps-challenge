

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
        'It\'s a draw'
      elsif (item) == 'rock' && c == 2
          'You won!'
      elsif (item) == 'rock' && c == 3
        'You lost!'
      elsif (item) == 'paper' && c == 1
          'You lost!'
      elsif (item) == 'paper' && c == 2
        'It\'s a draw'
      elsif (item) == 'paper' && c == 3
        'You won!'
      elsif (item) == 'scissors' && c == 1
          'You won!'
      elsif (item) == 'scissors' && c == 2
        'You lost!'
      elsif (item) == 'scissors' && c == 3
        'It\'s a draw'
      end
  else
      'Wrong input'
  end
end