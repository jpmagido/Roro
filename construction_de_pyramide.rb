def wtf_pyramide
  puts "Choisis un nombre (impair) d'étages pour ta pyramide"
  print '>' 
  apple = gets.chomp.to_i
  while apple.even?
    puts "J'ai dit impair connard, réessaie"
    apple = gets.chomp.to_i
  end
  
  puts "Voici ta pyramide :"
  demi_apple = apple/2
  top(demi_apple + 1)
  bottom(demi_apple)
end

def top(nbr_fois_boucle)
  space = nbr_fois_boucle - 1
  tags = 1

  nbr_fois_boucle.times do
   puts " "*space + "#"*tags
   space -= 1
   tags += 2
  end
end

def bottom(nbr_fois_boucle)
  space = 1
  tags = nbr_fois_boucle*2 - 1

  nbr_fois_boucle.times do
    puts " "*space + "#"*tags
    space += 1
    tags -= 2
  end
end

wtf_pyramide