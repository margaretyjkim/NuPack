def calculate_markup(base, num_people, type)
	flat_markup = base * .05
	type_markup = (base + flat_markup) * type
		if type == "drugs"
			type = 0.075
		elsif type == "food"
			type = 0.13
		elsif type == "electronics"
			type = 0.02
		else
			type = 1
		end

	people_markup_percent = num_people *= .12
	people_markup = (base + flat_markup) + people_markup_percent

	total = base + flat_markup + people_markup
end