# @param {Integer[]} seats
# @param {Integer[]} students
# @return {Integer}
def min_moves_to_seat(seats, students)
  seats.sort!
  students.sort!
  ans = 0
  seats.each_with_index do |item, index|
    ans += (item - students[index]).abs
  end
  ans
end
