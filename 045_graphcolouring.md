# Graph Colouring
###### [Date]

**Given an undirected graph with maximum degree DD, find a graph colouring using at most D+1 colours.**

For example:
![Uncoloured Graph](https://www.interviewcake.com/images/svgs/graph_coloring__frucht_graph_uncolored.svg?bust=189)
This graph's maximum degree (DD) is 3, so we have 4 colors (D+1D+1). Here's one possible colouring:
![Coloured Graph](https://www.interviewcake.com/images/svgs/graph_coloring__frucht_graph_colored.svg?bust=189)

Graphs are represented by an array of NN node objects, each with a label, a set of neighbours, and a colour:
```
require "set"

class GraphNode
  attr_accessor :label, :neighbours, :colour

  def initialize(label)
    @label = label
    @neighbours = Set.new
    @colour = nil
  end
end

a = GraphNode.new("a")
b = GraphNode.new("b")
c = GraphNode.new("c")

a.neighbours << b
b.neighbours << a
b.neighbours << c
c.neighbours << b

graph = [a, b, c]
```

---

Note:
- *D+1* colours is always enough. Does your method ever need more colours than that?
- Does your method go through every colour for every node? You can do better. You don't want *N\*D* in your final runtime.
- We can colour a graph in linear time and space (on the number of nodes, edges and/or the maximum degree).
- What if the input graph has a loop? Does your method handle that reasonably?
