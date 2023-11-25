# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
def can_finish(num_courses, prerequisites)
  edges = {}
  indeg = Array.new(num_courses, 0)
  for info in prerequisites
    if edges.has_key?(info[1])
      edges[info[1]].push(info[0])
    else
      edges[info[1]] = [info[0]]
    end
    indeg[info[0]] += 1
  end
  q = []
  visited = 0
  for u in 0...num_courses
    if indeg[u] == 0
      q.push(u)
    end
  end
  while not q.empty?
    visited += 1
    u = q.shift
    if edges.has_key?(u)
      for v in edges[u]
        indeg[v] -= 1
        if indeg[v] == 0
          q.push(v)
        end
      end
    end
  end
  visited == num_courses
end
