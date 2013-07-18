p1_tbreak = 0
p2_tbreak = 0
p1_swin = 0
p2_swin = 0
p1_adv = 0
p2_adv = 0
p1_set_score = 0
p2_set_score = 0
p1_set = 0
p2_set = 0
p1_game_score = 0
p2_game_score = 0

puts "Welcome to v match between p1 vs p2, you choose who wil win"
while true

	if p1_set_score = 0 && p2_set_score = 0
  	while (p1_set_score < 30 && p2_set_score < 30)
    	puts "Match start, who wins the point? (p1 or p2)"
      win = gets.chomp 
    	if win == "p1"
      	puts p1_set_score += 15
      	puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
    	elsif win == "p2"
      	puts p2_set_score += 15
      	puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
    	elsif win.empty? 
      	puts "Please enter a player"
    	elsif p1_set_score == 30 && p2_set_score == 30
      	puts "p1 and p2 are tied"  
    	else  	
       	puts "No player is named #{win}" 
    	end 
  	end 
	end

	if p1_set_score == 30
	  while p1_set_score < 40 && p2_set_score < 30
	    puts "Who wins the point? (Bug)"
	    win = gets.chomp
	    if win == "p1"
	      puts p1_set_score += 10
	      puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
	    elsif win == "p2"
	      puts p2_set_score += 15
	      puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
	    end
	  end
	end

	if p1_set_score == 40
	  while p1_swin < 1 && p2_set_score < 30
	    puts "Who wins the point?"
	    win = gets.chomp
	    if win == "p1"
	      puts p1_swin += 1
	      puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
	    elsif win == "p2"
	      puts p2_set_score += 15
	      puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
	    end
	  end
	end

	if p2_set_score == 30
	  while p2_set_score < 40 && p1_set_score < 30
	    puts "Who wins the point? (No Bug)"
	    win = gets.chomp
	    if win == "p2"
	      puts p2_set_score += 10
	      puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
	    elsif win == "p1"
	      puts p1_set_score += 15
	      puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
	    end
	  end
	end   

	if p2_set_score == 40
	  while p2_swin < 1 && p1_set_score < 30
	    puts "Who wins the point?"
	    win = gets.chomp
	    if win == "p2"
	      puts p2_swin += 1
	      puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
	    elsif win == "p1"
	      puts p1_set_score += 15
	      puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
	    end
	  end
	end   

	if p1_set_score == 30 && p2_set_score == 30
	  while p1_set_score < 40 && p2_set_score < 40
	  	  	puts "Who wins the point?"
	  	win = gets.chomp
	    if win == "p1"
	     puts p1_set_score += 10 
	     puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
	    elsif win == "p2"
	    puts p2_set_score += 10
	    puts "p1 #{p1_set_score} | p2 #{p2_set_score}" 
	    end
	  end  
	end

	if p1_set_score == 40 && p2_set_score == 30
	  while p1_swin < 1 && p2_set_score < 40
	    puts "Who wins the point?"
	    win = gets.chomp
	    if  win == "p1"
	      p1_swin += 1
	    elsif  win == "p2"
	      puts p2_set_score += 10
	      puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
	    end  
    end
  end

    if p2_set_score == 40 && p1_set_score == 30
	  	while p2_swin < 1 && p1_set_score < 40
	    	puts "Who wins the point? (This one)"
	    	win = gets.chomp
	    	if  win == "p2"
	      	p2_swin += 1
	   		elsif  win == "p1"
	      	puts p1_set_score += 10
	      	puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
	    	end  
      end
    end

    if p1_set_score == 40 && p2_set_score == 40
	  while p1_adv < 2 && p2_adv < 2
	  	  	puts "Who wins the point?"
	  	win = gets.chomp
	    if win == "p1" && p1_adv == 0 && p2_adv == 0
	     p1_adv += 1
	     puts "p1 Adv | p2 #{p2_set_score}"
	     p2_adv = 0
	    elsif win == "p1" && p1_adv == 1
	      p1_adv += 1
	      p1_swin += 1
	    elsif win == "p1" && p2_adv == 1
	    	puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
        p2_adv = 0 
	    elsif win == "p2" && p2_adv == 0 && p1_adv == 0
	    	p2_adv += 1
	    	puts "p1 #{p1_set_score} | p2 Adv"
	    	p1_adv = 0
	    elsif win == "p2" && p2_adv == 1
	    	p2_adv += 1
	    	p2_swin += 1
	    elsif win == "p2" && p1_adv == 1
	      puts "p1 #{p1_set_score} | p2 #{p2_set_score}"
	      p1_adv = 0	
	    end
	  end  
	end

	if p1_swin == 1
  	  puts "p1 has won the game"
  	  p1_set += 1
  		p1_set_score = 0
  		p2_set_score = 0
  		p1_swin = 0
  		p2_swin = 0
 			puts "p1 #{p1_set} || p2 #{p2_set}"
	elsif p2_swin == 1
 			puts "p2 has won the game"
 			p2_set += 1 
 			p1_set_score = 0   
 			p2_set_score = 0
 			p1_swin = 0
 			p2_swin = 0
 			puts "p1 #{p1_set} || p2 #{p2_set}"
	end

	if p1_set == 6 && p2_set < 5
		puts "p1 has won the set"
		p1_game_score += 1
		puts "set score: p1 #{p1_game_score} | p2 #{p2_game_score}"
		p1_set = 0
		p2_set = 0
		p1_swin = 0
		p2_swin = 0
	elsif p2_set == 6 && p1_set < 5
	  puts "p2 has won the set"
	  p2_game_score += 1
	  puts "games: p1 #{p1_game_score} | p2 #{p2_game_score}"
	  p1_set = 0
	  p2_set = 0
	  p1_swin = 0
	  p2_swin = 0
	end

	if p1_set == 7 && p2_set == 5
		puts "p1 has won the set"
		p1_game_score += 1
		puts "set score: p1 #{p1_game_score} | p2 #{p2_game_score}"
		p1_set = 0
		p2_set = 0
	end	

	if p2_set == 7 && p1_set == 5
		puts "p2 has won the set"
		p2_game_score += 1
		puts "set score: p1 #{p1_game_score} | p2 #{p2_game_score}"
		p1_set = 0
		p2_set = 0
	end

	if p1_set == 6 && p2_set == 6
	  puts "Tie breaker"
	  while p1_tbreak < 6 && p2_tbreak < 6
	  	puts "Who wins the tie breaker point?"
	  	tbreak = gets.chomp
	    if tbreak == "p1"
        p1_tbreak += 1
        puts "p1 #{p1_tbreak} | p2 #{p2_tbreak}"
      elsif tbreak == "p2"
      	p2_tbreak += 1
        puts "p1 #{p1_tbreak} | p2 #{p2_tbreak}"
      end
    end
  end

  if p1_tbreak == 6 && p2_tbreak < 5
  	while p1_tbreak < 7 && p2_tbreak < 6
  		puts "Wha will win the tie breaker point?"
  		bwin = gets.chomp
  		if bwin == "p1"
  			p1_tbreak += 1
  			puts "p1 #{p1_tbreak} | p2 #{p2_tbreak}"
  		elsif bwin == "p2"
  		  p2_tbreak += 1
  		  puts "p1 #{p1_tbreak} | p2 #{p2_tbreak}"
  		end  	
    end
  elsif p2_tbreak == 6 && p1_tbreak < 5
    while p2_tbreak < 7 && p1_tbreak < 6
    	puts "Wha will win the tie breaker point?"
  		bwin = gets.chomp
  		if bwin == "p1"
  			p1_tbreak += 1
  			puts "p1 #{p1_tbreak} | p2 #{p2_tbreak}"
  		elsif bwin == "p2"
  		  p2_tbreak += 1
  		  puts "p1 #{p1_tbreak} | p2 #{p2_tbreak}"
  		end
  	end	   
  end  

  if p1_tbreak == 6 && p2_tbreak == 5
   	while p1_tbreak < 7 && p2_tbreak < 6
   	  puts "Whoo wins the tie breaker point"
   	  twin = gets.chomp
   		if twin == "p1"
   			p1_tbreak += 1
   			puts "p1 #{p1_tbreak} | p2 #{p2_tbreak}"
      elsif twin == "p2"
      	p2_tbreak += 1
      	puts "p1 #{p1_tbreak} | p2 #{p2_tbreak}"
      end	
    end
  elsif p2_tbreak == 6 && p1_tbreak == 5
    while p2_tbreak < 7 && p1_tbreak < 6
      puts "Whoo wins the tie breaker point"
      twin = gets.chomp
      if twin == "p1"
   			p1_tbreak += 1
   			puts "p1 #{p1_tbreak} | p2 #{p2_tbreak}"
      elsif twin == "p2"
      	p2_tbreak += 1
      	puts "p1 #{p1_tbreak} | p2 #{p2_tbreak}"
      end
    end
  end  
      	

  if p1_tbreak == 7 && p2_tbreak < 6
    puts "p1 has won the tiebreak and the set!"
    p1_game_score += 1
    puts "set score: p1 #{p1_game_score} | p2 #{p2_game_score}"
    p1_set = 0
		p2_set = 0
		p1_tbreak = 0
		p2_tbreak = 0
	elsif p2_tbreak == 7 && p1_tbreak < 6
	  puts "p2 has won the tiebreak and the set!"
	  p2_game_score += 1
	  puts "set score: p1 #{p1_game_score} | p2 #{p2_game_score}"
	  p1_set = 0
		p2_set = 0
		p1_tbreak = 0
		p2_tbreak = 0
	end

	if p1_tbreak == 6 && p2_tbreak == 6
		 while (p1_tbreak != (p2_tbreak + 2)) && (p2_tbreak != (p1_tbreak + 2)) 
	    puts "Who will win the tie breaker point?"
	    tbwin = gets.chomp
	    if tbwin == "p1"
	    	p1_tbreak += 1
	    	puts "p1 #{p1_tbreak} | p2 #{p2_tbreak}"
	  	elsif tbwin == "p2"
	    	p2_tbreak += 1
	    	puts "p1 #{p1_tbreak} | p2 #{p2_tbreak}"
	  	end
		end
	end	

	if (p1_tbreak > 5 && p2_tbreak > 5) && ((p2_tbreak + 2) == p1_tbreak)	 
		 puts "p1 has won the tie breaker and the set!"
		 p1_game_score += 1
		 puts "set score: p1 #{p1_game_score} | p2 #{p2_game_score}"
     p1_set = 0
		 p2_set = 0
		 p1_tbreak = 0
		 p2_tbreak = 0
	elsif (p1_tbreak > 5 && p2_tbreak > 5) && ((p1_tbreak += 2) == p2_tbreak)	 
		 puts "p2 has won the tie breaker and the set!"	
		 p2_game_score += 1
		 puts "set score: p1 #{p1_game_score} | p2 #{p2_game_score}"
     p1_set = 0
		 p2_set = 0
		 p1_tbreak = 0
		 p2_tbreak = 0
	end	 


	if p1_game_score == 3
	  puts "Game, Set and Match! P1 has won the match!" 
	elsif p2_game_score == 3
	  puts "Game, Set and Match! P2 has won the match!" 
	end     	
  
end      