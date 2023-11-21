if __FILE__ == $0
	if ARGV.length != 2
		puts "Wrong number of arguments"
		exit!
	end
	first = ARGV[0].downcase
	second = ARGV[1].downcase
	first_beats_second = {
	  "rock" => "scissors",
	  "scissors" => "paper",
	  "paper" => "rock"
	}
	if first == second
	  puts "Draw"
	  exit!
	end
	first_beats_second.each do |key, value|
		if first == key and second == value
		  puts "Player 1 won"
		  exit!
		elsif first == value and second == key
			puts "Player 2 won"
			exit!
		end
	end
	puts "Wrong arguments"
end
