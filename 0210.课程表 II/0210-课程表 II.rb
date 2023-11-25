# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Integer[]}
def find_order(num_courses, prerequisites)
  edges = {}
  indeg = Array.new(num_courses, 0)
  result = []
  for info in prerequisites
    if edges.has_key?(info[1])
      edges[info[1]].push(info[0])
    else
      edges[info[1]] = [info[0]]
    end
    indeg[info[0]] += 1
  end
  q = []
  for u in 0...num_courses
    if indeg[u] == 0
      q.push(u)
    end
  end

  while not q.empty?
    u = q.shift
    result.push(u)
    if edges.has_key?(u)
      for v in edges[u]
        indeg[v] -= 1
        if indeg[v] == 0
          q.push(v)
        end
      end
    end
  end
  if result.length != num_courses
    result = []
  end
  return result
end
