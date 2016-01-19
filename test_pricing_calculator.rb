require './test_helper'

require_relative 'pricing_calculator'

class TestPricing < MiniTest::Test
	def test_first_input
		assert_equal 1591.58, calculate_markup(1299.99, 3, "food")
	end

	def test_second_input
		assert_equal 6199.81, calculate_markup(5432.00, 1, "drugs")
	end

	def test_third_input
		assert_equal 13707.63, calculate_markup(12456.95, 4, "books")
	end

end