
module Playgame

	case[name, computer]

	name.value = $stdin.gets.chomp.downcase

	when ['p','r'], ['s','p'], ['r','s']

	puts "\n\n\nWell done, you win!"


	when ['p','p'], ['s','s'], ['r','s']

	puts "\n\n\nIt´s a tie!"

	else 
	puts "\n\n\nSorry, man, you lose!"

end