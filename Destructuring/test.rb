# frozen_string_literal: true

require_relative 'main'

RSpec.describe Destruct do
  describe 'function' do
    it 'should works' do
      data = [
        %w[ruby dynamic strong],
        %w[js dynamic weak],
        %w[c static weak],
        %w[kotlin static strong]
      ]
  
      expected = [
        %w[ruby strong],
        %w[js weak],
        %w[c weak],
        %w[kotlin strong]
      ]
  
      expect { convert(data) == expected }
    end
  end
end
