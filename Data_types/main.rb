# frozen_string_literal: true

module Types

  def self.type_of_type(value)
    [Hash, Array, Range].include?(value.class) ? :complex : :simple
  end

end
