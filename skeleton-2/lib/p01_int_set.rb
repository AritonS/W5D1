class MaxIntSet
  attr_reader :store
  def initialize(max)
    @max = max
    @store = Array.new(max) { false }
  end

  def insert(num)
    if is_valid?(num)
      @store[num] = true
    else
      raise "Out of bounds"
    end
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    @store[num] == true
  end

  private

  def is_valid?(num)
    num <= @max && num >= 0
  end

  def validate!(num)
  end
end


class IntSet
    attr_reader :num_buckets
    def initialize(num_buckets = 20)
        @num_buckets = num_buckets
        @store = Array.new(num_buckets) { Array.new }
    end

    def insert(num)
        i = num % num_buckets
        @store[i] << num
    end

    def remove(num)
        i = num % num_buckets
        @store[i].delete(num)
    end

    def include?(num)
        i = num % num_buckets
        @store[i].include?(num)
    end

    private

    def [](num)
        # optional but useful; return the bucket corresponding to `num`
    end

    def num_buckets
        @store.length
    end
    end

    class ResizingIntSet
    attr_reader :count

    def initialize(num_buckets = 20)
        @store = Array.new(num_buckets) { Array.new }
        @count = 0
    end

    def inspect

    end

    def insert(num)
    end

    def remove(num)
    end

    def include?(num)
    end

    private

    def [](num)
        # optional but useful; return the bucket corresponding to `num`
    end

    def num_buckets
        @store.length
    end

    def resize!
        if num_buckets < count
            self.num_buckets.times do 
                @store += []
            end
        end
    end
end
