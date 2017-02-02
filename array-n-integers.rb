#!/usr/bin/ruby -w

array_integers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

target = 9

print array_integers, "\n"

# O(n^2)
# fix me: don't compare index to itself
array_integers.each do |n|
  array_integers.each do |m|
    print "#{n} + #{m}"
    if (n + m) == target
      print " *, "
    else
      print ", "
    end
  end
  puts
end

puts

need_hash = {}

# O(n)
array_integers.each do |p|
  need_hash[target - p] = p
end

# O(n)
# fix me: don't compare index to itself
array_integers.each do |q|
  if need_hash[q]
    puts "found pair: #{q} + #{need_hash[q]}"
    break
  end
end

