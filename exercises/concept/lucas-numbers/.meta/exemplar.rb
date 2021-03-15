class LucasNumbers
  attr_reader :sequence

  def initialize
    @sequence = create_sequence
  end

  def to_a(count)
    raise ArgumentError, "count must be a number greater than or equal to 0" if !count.is_a?(Integer) || count < 1

    sequence.take(count)
  end

  private
  def create_sequence
    Enumerator.new do |yielder|
      a = 2
      b = 1
      yielder << a << b
      loop do
        a, b = b, a + b
        yielder << b
      end
    end
  end
end
