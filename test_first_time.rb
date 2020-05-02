def star 
	pointe
	coeur
	legs
end
def pointe

	nb_stars_pointe = 1
	space_pointe = 30

	string_to_create(10, 30, 1)

	10.times do
		puts  " "*space_pointe + "*"*nb_stars_pointe*2
		nb_stars_pointe += 1
		space_pointe -= 1
	end
end

def coeur
	nb_stars_coeur = 31
	space_coeur = 0
	8.times do	
		puts " "*space_coeur + "*"*nb_stars_coeur*2
		nb_stars_coeur -= 2
		space_coeur += 2
	end
end

def legs
	space_legs = 15
	nb_stars_legs = 17
	space_crotch = 4

	3.times do 
		puts " "*space_legs	+ "*"*nb_stars_legs*2
		space_legs -= 2
		nb_stars_legs += 2
	end

	space_legs = 10
	nb_stars_legs = 20

	6.times do 
		puts " "*space_legs + "*"*nb_stars_legs + " "*space_crotch + "*"*nb_stars_legs
		space_legs -= 2
		space_crotch += 12
		nb_stars_legs -= 4

	end
end

private

def string_to_create(it_nbr, symbol1, symbol2)
	it_nbr.times do
		puts " " * symbol1 + "*" * symbol2 *2
		symbol1 -= 1
		symbol2 += 1
	end
end

star