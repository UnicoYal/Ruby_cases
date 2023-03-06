# frozen_string_literal: true

# Case
module Destruct
  def self.convert(data)
    data.map { |lang, _, strength| [lang, strength] }
  end
end
