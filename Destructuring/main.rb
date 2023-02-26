# frozen_string_literal: true

# Case
module Destruct
  def convert(data)
    data.map { |lang, _, strength| [lang, strength] }
  end
end
