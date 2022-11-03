module MyEnumerable
  def all?
    check_value = true
    each do |enum|
      check_value = false unless yield enum
    end
    check_value
  end

  def any?
    check_value = true
    each do |enum|
      check_value = true if yield enum
    end
  end

  def filter
    array = []
    each { |i| array << i if yield i }
    array
  end
end
