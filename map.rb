module Enumerable
  def map(&proc)
    result = []
    each do |item|
      result <<  proc.call(item)
    end
    return result
  end

  alias_method :collect, :map
end

# すべて 3 倍にした配列を返す
p (1..3).map {|n| n * 3 }  # => [3, 6, 9]
p (1..3).collect { "cat" } # => ["cat", "cat", "cat"]
