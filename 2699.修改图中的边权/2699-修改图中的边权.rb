def modified_graph_edges(n, edges, source, destination, target)
  @n = n
  @edges = edges
  @destination = destination
  @target = target
  adj_matrix = Array.new(@n) { Array.new(@n, -1) }
  @edges.each_with_index do |item, i|
    adj_matrix[item[0]][item[1]] = i
    adj_matrix[item[1]][item[0]] = i
  end
  @from_destination = dijkstra(0, @destination, adj_matrix)
  if @from_destination[source] > @target
    return []
  end
  from_source = dijkstra(1, source, adj_matrix)
  if from_source[@destination] != @target
    return []
  end
  return @edges
end

def dijkstra(op, source, adj_matrix)
  dist = Array.new(@n, 1.0 / 0.0)
  used = Hash.new
  dist[source] = 0

  (@n - 1).times do
    u = -1
    0.upto(@n - 1) do |i|
      if (not used.has_key?(i)) && (u == -1 || dist[i] < dist[u])
        u = i
      end
    end
    used[u] = 1
    0.upto(@n - 1) do |v|
      if (not used.has_key?(v)) && adj_matrix[u][v] != -1
        if @edges[adj_matrix[u][v]][2] != -1
          dist[v] = [dist[v], dist[u] + @edges[adj_matrix[u][v]][2]].min
        else
          if op == 0
            dist[v] = [dist[v], dist[u] + 1].min
          else
            modify = @target - dist[u] - @from_destination[v]
            if modify > 0
              dist[v] = [dist[v], dist[u] + modify].min
              @edges[adj_matrix[u][v]][2] = modify
            else
              @edges[adj_matrix[u][v]][2] = @target
            end
          end
        end
      end
    end
  end
  dist
end
