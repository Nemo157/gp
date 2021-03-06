module GP
  class Node
    attr_reader :rtype

    def initialize children=[]
      @children = children
    end

    def traverse nodes=[], leaves=[]
      (has_children? ? nodes : leaves) << self
      @children.each { |child| child.traverse nodes, leaves }
      return nodes, leaves
    end

    def max_height
      @max_height ||= if has_children?
        @children.map { |child| child.max_height }.max + 1
      else
        1
      end
    end

    def avg_height
      @avg_height ||= if has_children?
        @children.map { |child| child.avg_height }.reduce(&:+) / @children.size + 1
      else
        1
      end
    end

    def simplify
      dup
    end

    def random_child
      @children.choice
    end

    def has_children?
      @children.any?
    end
  end
end
