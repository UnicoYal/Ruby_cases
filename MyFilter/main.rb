# frozen_string_literal: true

# Case
module MyFilter
  def my_filter(arr)
    res = []
    arr.each {|el| res << el if yield(el)}
    res
  end
end
