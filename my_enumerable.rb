module MyEnumerable
  def all?
    each { |item| return false unless yield item }
    true
  end

  def any?
    each { |item| return true if yield item }
    false
  end

  def filter
    filtered_array = []
    each { |e| filtered_array.push(e) if yield e }
    filtered_array
  end
end
