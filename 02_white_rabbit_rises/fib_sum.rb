class FibSum

  @fib_cache = {1 => 1, 2 => 1}

  def self.for(num)
    (1..num).inject { |sum, i| sum += fib(i) }
  end

  private

  def self.fib(n)
    @fib_cache[n] ||= fib(n-2) + fib(n-1)
  end

end

# puts FibSum.for(42000)
