def complete_game
  puts "Vous êtes en bas de l'escalier, appuyer sur entrée pour lancer le dé"
  gets.chomp
  step = 0
  until step == 10
   step = game(step)
   gets.chomp
  end

  puts "BRAVO !!"
end

def game(step)
  
  dice = rand(1..6)
  puts dice

  if dice >= 5
    step += 1
    puts "Vous êtes sur la marche numéro #{step}"

  elsif dice == 1
    step -= 1
    puts "Vous êtes sur la marche numéro #{step}"

  else 
    puts "Vous êtes sur la marche numéro #{step}"

  end

 return step
end
complete_game

