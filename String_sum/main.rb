# frozen_string_literal: true

module Happy
  def self.happy?(value)
    left_sum = 0
    rigth_sum = 0
    string_value = value.to_s
    left = string_value[..string_value.length/2 - 1]
    rigth = string_value[string_value.length/2..]
    left.each_char {|el| left_sum += el.to_i}
    rigth.each_char {|el| rigth_sum += el.to_i}
    rigth_sum == left_sum ? true : false
  end
end