# frozen_string_literal: true

# Case
module Case
  def self.max_sum(arr)
    max_sum = 0
    curr_sum = 0
    arr.size.times do |i|
      curr_sum += arr[i]
      if (curr_sum > max_sum)
        max_sum = curr_sum
      elsif curr_sum < 0
        curr_sum = 0
      end
    end
    max_sum
  end
end
