# frozen_string_literal: true

# Case
module Conv
  def convert(string_array)
    string_array.filter { |el| el[-1] == '?' }.map(&:downcase).sort
  end
end
