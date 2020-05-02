def choose_password
  puts "Salut, choisis un mot de passe avec au moins une lettre et au moins un chiffre"
  print '>' 
  password = gets.chomp

  until (letter_in_password(password) && number_in_password(password))
    puts "Raté, réessaie"
    password = gets.chomp
  end 
  
  puts "Entre le mot de passe"
  print ">"
  input = gets.chomp
    while input != password
      puts "Raté, réessaie"
      input = gets.chomp
    end
  
  puts "Bienvenue dans l'espace secret, prépare-toi à une révélation"
  puts "Once you go black you never go back"
end


def letter_in_password(input)
  input.split("").map { |char| char.to_i }.count(0) > 0
end

def number_in_password(input)
  input.split("").map {|char| char.to_i.between?(1,9) }.count(true) > 0
end

choose_password