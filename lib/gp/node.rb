module GP
  class Node
    def initialize
      @children = []
    end

    def replace old_node, new_node
      @children[@children.index old_node] = new_node
    end

    def random_child
      @children.choice
    end

    def has_children
      @children.any?
    end
  end
end
