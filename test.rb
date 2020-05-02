def star 
	# Pointe
	string_to_create(10, 30, 1, -1, 1)
	# Coeur
	string_to_create(8, 0, 31, 2, -2)
	# legs 1
	string_to_create(3, 15, 17, -2, 2)
	legs2
end

def legs2
	" "_crotch = 4
	" "_legs = 10
	nb_"*"s_legs = 20

	6.times do 
		puts " " * " "_legs + "*" * nb_"*"s_legs + " " * " "_crotch + "*" * nb_"*"s_legs
		" "_legs -= 2
		" "_crotch += 12
		nb_"*"s_legs -= 4

	end
end

def string_to_create(it_nbr, symbol1, symbol2, it1, it2)
	it_nbr.times do
		puts " " * symbol1 + "*" * symbol2 *2
		if it1 > 0
			symbol1 += it1 
		else
			symbol1 -= it1.abs
		end
		
		if it2 > 0
			symbol2 += it2 
		else
			symbol2 -= it2.abs
		end
	end
end

star
