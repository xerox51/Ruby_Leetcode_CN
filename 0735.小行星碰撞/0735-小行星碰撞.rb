# @param {Integer[]} asteroids
# @return {Integer[]}
def asteroid_collision(asteroids)
  st = []
  for aster in asteroids
    alive = true
    while alive and aster < 0 and not st.empty? and st[-1] > 0
      if st[-1] < -aster
        alive = true
      else
        alive = false
      end
      if st[-1] <= -aster
        st.pop
      end
    end
    if alive
      st.push(aster)
    end
  end
  return st
end
