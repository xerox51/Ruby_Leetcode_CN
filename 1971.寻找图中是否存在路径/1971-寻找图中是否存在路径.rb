# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer} source
# @param {Integer} destination
# @return {Boolean}
def valid_path(n, edges, source, destination)
  adj = Array.new(n) { Array.new }
  edges.each do |edge|
    x, y = edge[0], edge[1]
    adj[x].push(y)
    adj[y].push(x)
  end
  visited = Array.new(n, false)
  qu = Array.new
  qu.push(source)
  visited[source] = true
  while (not qu.empty?)
    vertex = qu.shift
    if vertex == destination
      break
    end
    adj[vertex].each do |item|
      unless visited[item]
        qu.push(item)
        visited[item] = true
      end
    end
  end
  visited[destination]
end
