# characters = %w(e n g a r o)
# word = 'orange'
#
# def valid_word?(word, characters)
#   word.each_char.all? { |chr| characters.include?(chr) }
# end



# https://edabit.com/challenge/vs6Dgh4DiSMiPFGhF
# DAYS = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
#
# def get_day(date_string)
#   day_no = Date.strptime(date_string, '%m/%d/%Y').wday                //flaw in this code [require 'day'] is used for using/get date or time
#   DAYS[day_no]
# end


# def power_morphic(num)
#   return 'Please enter a non-negative value.' if num.negative?
#   multiples = create_multiples_of(num)
#   check_multiples_of_num_and_respond(multiples, num)
# end
#
# def create_multiples_of(num)
#   multiples = []
#   (2..10).each { |k| multiples << num ** k }
#   multiples
# end
#
# def check_multiples_of_num_and_respond(multiples, num)
#   occs = []
#   divisor = get_divisor_for_number(num)
#   multiples.each { |multiple| occs << multiple if multiple % divisor == num }
#   get_response_string_by_occurrences(occs)
# end
#
# def get_divisor_for_number(num)
#   10 ** num.digits.count
# end
#
# def get_response_string_by_occurrences(occs)
#   case occs.count
#   when 9
#     puts 'Polymorphic' if occs.count == 9
#   when 4
#     puts 'Quadrimorphic' if occs.count == 4
#   when 2
#     puts 'Dimorphic' if occs.count == 2           // No need for if condition in cases
#   when 1
#     puts 'Enamorphic' if occs.count == 1          // undefined method for nill argument
#   else
#     puts 'Amorphic' if occs.count == 0
#   end
# end
#
# power_morphic(5)



# https://edabit.com/challenge/Zxc5HaQ6hKSsuPqsK
# def reverse_string(str)
#   sub_arrays = str.split(' ')
#   sub_arrays.map { |value| value.length >= 5 ? value.reverse : value }.join(' ')
# end
#
# puts reverse_string('This is a lacipyt .ecnetnes')     // Not except empty string check validity on that
#



# https://edabit.com/challenge/yZMbHEGss8xwp5JNW
# def concat_arrays(*arr_args)
#   arr_args.flatten
# end
#
# print concat_arrays(([1], [2], [3], [4], [5], [6], [7]))



# https://edabit.com/challenge/84KYYFBbLvbT2wFt8
# def calculate_profit(options={})
#   cp = options["cost_price"]
#   sp = options["sell_price"]
#   inv = options["inventory"]
#   profit = sp - cp
#   (profit * inv).round
# end
#
# calculate_profit({
#   "cost_price" => 32.67,
#   "sell_price" => 45.00,
#   "inventory" => 1200
# })



# https://edabit.com/challenge/w5b72hSvQpfMnEjCr
# REGEX = /^(\d{4}|\d{6})$/
#
# def is_valid_PIN?(code)
#   code.match?(REGEX)
# end



# https://edabit.com/challenge/5p9H8zCeXaaoMpZ5j
# def oldest(hash)
#   puts hash.max_by { |k,v| v }.first
# end
#
# oldest({
#   "Emma" => 71,
#   "Jack" => 45,
#   "Amy" => 15,
#   "Ben" => 29
# })



# https://edabit.com/challenge/vY4SjdRr7Mu2zJFeQ
# def antipodes_average(arr)
#   halves = split_array_into_two_halves(arr)
#   reverse_last_sub_array_of(halves)
#   semi_final = transpose_and_sum_values(halves)
#   divide_elements_by_two(semi_final)
# end
#
# def split_array_into_two_halves(arr)
#   remove_middle_element_then_return(arr) if arr.length.odd?
#   arr.each_slice(arr.size/2).to_a
# end
#
# def remove_middle_element_then_return(arr)
#   middle_index = arr.length / 2
#   arr.delete_at(middle_index)
#   arr
# end
#
# def reverse_last_sub_array_of(halves)
#   halves.last.reverse!
# end
#
# def transpose_and_sum_values(halves)
#   halves.transpose.map { |x| x.sum }
# end
#
# def divide_elements_by_two(semi_final)
#   semi_final.map { |x| divide_and_drop_trailing_zero(x) }
# end
#
# def divide_and_drop_trailing_zero(x)
#   res = x / 2.0
#   i = res.to_i
#   i == res ? i : res
# end
#
# print antipodes_average([1,2,3,4])
# puts



# https://edabit.com/challenge/mmyJ7SkFErvJTrjuu
# def test_fairness(arr1, arr2)
#   return 'Invalid input format!.' unless is_input_valid?(arr1, arr2)
#   area_1, area_2 = get_area_of_chocolate_pieces(arr1, arr2)
#   are_both_areas_equal?(area_1, area_2)
# end
#
# # Methods for handling exceptions
# def is_input_valid?(arr1, arr2)
#   return false unless arr1.is_a?(Array) || arr2.is_a?(Array)
#   are_sub_arrays_valid?(arr1, arr2)
# end
#
# def are_sub_arrays_valid?(arr1, arr2)
#   return false unless arr1.all?(Array) ||  arr2.all?(Array)
#   check_arrays_dimensions?(arr1, arr2)
# end
#
# def check_arrays_dimensions?(arr1, arr2)
#   arr1.all? { |sub_array| sub_array.size == 2 } &&
#   arr2.all? { |sub_array| sub_array.size == 2 }
# end
#
# def get_area_of_chocolate_pieces(arr1, arr2)
#   area_1 = area_2 = 0
#   arr1.each { |arr| area_1 = area_1 + (arr.first * arr.last) }
#   arr2.each { |arr| area_2 = area_2 + (arr.first * arr.last) }
#   return area_1, area_2
# end
#
# def are_both_areas_equal?(area_1, area_2)
#   area_1 == area_2
# end
#
# puts test_fairness([[1, 2], [2, 1]], [[2, 2]])
