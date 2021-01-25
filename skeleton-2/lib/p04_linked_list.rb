require 'byebug'
class Node
  attr_reader :key
  attr_accessor :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # optional but useful, connects previous link to next link
    # and removes self from list.
  end
end

class LinkedList
    include Enumerable

    def initialize
        @head = Node.new
        @tail = Node.new
        @head.next = @tail
        @tail.prev = @head
    end

    def [](i)
        each_with_index { |link, j| return link if i == j }
        nil
    end

    def first
    end

    def last
    end

    def empty?
        @head.next == @tail && @tail.prev == @head
    end

    def get(key)
        self.each do |node|
            if key == node.key
                return node.val
            end
        end
        return nil
    end

    def include?(key)
    end

    def append(key = nil, val = nil)
        new_node = Node.new(key, val)

        new_node.next = @head
        @head.prev = new_node
    end

    def update(key, val)
    end

    def remove(key)
    end

    def each
        current_node = self.head.next
        until current_node == self.take
            yield current_node
            current_node = current_node.next
        end
    end

    # uncomment when you have `each` working and `Enumerable` included
    # def to_s
    #   inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
    # end
end
