require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each
    @list.each { |item| yield item }
  end
end