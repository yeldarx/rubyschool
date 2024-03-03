# puts [11, 22, 33, 44, 55].count(&:even?) # v1

puts [11, 22, 33, 44, 55].count { |i| i % 2 == 0} # v2