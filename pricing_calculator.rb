def calculate_markup(base, num_people, type)
	type_percent = case type
	when "drugs"
		0.075
	when "food"
		0.13
	when "electronics"
		0.02
	else
		0
	end

	flat_markup = base * 0.05

	type_markup = (base + flat_markup) * type_percent

	people_markup_percent = num_people * 0.012
	people_markup = (base + flat_markup) * people_markup_percent

	total = base + flat_markup + type_markup + people_markup

	total.round(2)
end