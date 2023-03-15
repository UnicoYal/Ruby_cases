# frozen_string_literal: true

# Case
module Case
  def self.magick_string?(some_string)
    arr = %w[a b c d e f g h i j k l m n o p q r s t u
             v w x y z]

    some_string.downcase.each_char do |c|
      arr.delete(c) if arr.include?(c)
    end
    if arr.size.zero?
      true
    else
      false
    end
  end
end
