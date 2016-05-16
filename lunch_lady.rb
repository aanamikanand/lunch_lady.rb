@main_menu = { "Meatloaf": 5.00, "Mystery Meat": 3.00, "Slop": 1.00 }
@side_menu = { "Carrots": 1.75, "Mystery Yougurt": 1.00, "Beef Jerkey": 0.50}

@arr_menu = []
@arr_cost = []



def main_lunch	
	puts "What main dish would you like?"
  #  @main_menu.each_with_index do |(key, value), index|
  # 	puts "#{index} : #{key} (#{value})"
  # end
	@main_menu.each_with_index  {|(food, price), i| puts  "#{i+=1}: #{food}(#{price})"}

	main_dish = gets.strip
	if main_dish == "1"
		@arr_menu[0] = @main_menu.keys[0]
		@arr_cost[0] = @main_menu.values[0]
	elsif main_dish == "2"
		@arr_menu[0]  = @main_menu.keys[1]
		@arr_cost[0] = @main_menu.values[1]
	elsif main_dish == "3"
		@arr_menu[0]  = @main_menu.keys[2]
		@arr_cost[0] = @main_menu.values[2]
	else
		puts "Try again"
		exit(0)
	end
	@arr_menu[0]
end
main_lunch

def side_lunch1
	puts "What first side dish would you like?"
	@side_menu.each_with_index {|(food, price), i| puts "#{i+=1}: #{food}(#{price})" }
	side_dish1 = gets.strip
	if side_dish1 == "1"
		@arr_menu[1]  = @side_menu.keys[0]
		@arr_cost[1] = @side_menu.values[0]
	elsif side_dish1 == "2"
		@arr_menu[1]  = @side_menu.keys[1]
		@arr_cost[1] = @side_menu.values[1]
	elsif side_dish1 == "3"
		@arr_menu[1]  = @side_menu.keys[2]
		@arr_cost[1] = @side_menu.values[2]
	else
		puts "Try again"
		exit(0)
	end
	@arr_menu[1] 
end
side_lunch1

def side_lunch2
	puts "What second side dish would you like?"
	@side_menu.each_with_index {|(food, price), i| puts "#{i+=1}: #{food}(#{price})"}
	side_dish2 = gets.strip
	if side_dish2 == "1"
		@arr_menu[2]  = @side_menu.keys[0]
		@arr_cost[2] = @side_menu.values[0]
	elsif side_dish2 == "2"
		@arr_menu[2]  = @side_menu.keys[0]
		@arr_cost[2] = @side_menu.values[0]
	elsif side_dish2 == "3"
		@arr_menu[2]  = @side_menu.keys[0]
		@arr_cost[2] = @side_menu.values[0]
	else
		puts "Try again"
		exit(0)
	end
	@arr_menu[2]
end
side_lunch2

puts "your food selection: #{@arr_menu.join(',')}"
puts "Your Total is: #{@arr_cost.inject(:+)}"

