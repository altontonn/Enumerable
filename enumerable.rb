module MyEnumerable
  def all?
    check_value = true
    each do |enum|
      check_value = false unless yield enum
    end
    check_value
  end
end