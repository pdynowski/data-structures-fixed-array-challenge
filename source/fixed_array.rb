class FixedArray

  def initialize(size)
    @array = Array.new(size)
    return @array
  end

  def get(index)
    check_bounds(index)
    @array[index]
  end

  def set(index, element)
    check_bounds(index)
    @array[index] = element
  end

  private
  def check_bounds(index)
    raise OutOfBoundsException, "Index #{index} not in array" if index < 0 || index >= @array.size
  end

  class OutOfBoundsException < RangeError
  end

end

