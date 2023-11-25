# @param {Integer} initial_energy
# @param {Integer} initial_experience
# @param {Integer[]} energy
# @param {Integer[]} experience
# @return {Integer}
def min_number_of_hours(initial_energy, initial_experience, energy, experience)
  ien = initial_energy
  iex = initial_experience
  ans = 0
  for i in 0...experience.length
    if ien > energy[i] and iex > experience[i]
      ien = ien - energy[i]
      iex = iex + experience[i]
    elsif ien <= energy[i] and iex > experience[i]
      temp1 = energy[i] - ien + 1
      ans += temp1
      ien = 1
      iex = iex + experience[i]
    elsif iex <= experience[i] and ien > energy[i]
      temp1 = experience[i] - iex + 1
      ans += temp1
      ien = ien - energy[i]
      iex = experience[i] * 2 + 1
    else
      temp1 = experience[i] - iex + 1
      temp2 = energy[i] - ien + 1
      ans += temp1
      ans += temp2
      ien = 1
      iex = experience[i] * 2 + 1
    end
  end
  ans
end
