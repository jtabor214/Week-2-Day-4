# Write a method `no_dupes?(arr)` that accepts an array as an arg and returns a
# new array containing the elements that were not repeated in the array.

# def no_dupes?(arr)
#     hash = Hash.new (0)
#     new_array = []

#     arr.each do |ele|
#         hash[ele] += 1
#     end

#     hash.each do |ele, count|
#         if count == 1
#             new_array << ele
#         end
#     end

#     new_array
# end


# p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
# p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
# p no_dupes?([true, true, true])            # => []



# Write a method `no_consecutive_repeats?(arr)` that accepts an array as an arg.
# The method should return `true` if an element never appears consecutively in the
# array; it should return `false` otherwise.

def no_consecutive_repeats?(arr)

    arr.each_with_index do |ele, idx|
        if ele == arr[idx + 1]
            return false
        end
    end
    return true
end


p no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
p no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
p no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
p no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
p no_consecutive_repeats?(['x'])                              # => true