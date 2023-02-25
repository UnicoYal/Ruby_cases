# frozen_string_literal: true

require_relative 'main'

RSpec.describe ArraysIntersection do
  describe 'function' do
    it 'should works' do
      expect { intersection([1, 3, 8], [9, 3, 1]) == [1, 3] }
      expect { intersection([8], [5, 0]) }
    end
  end
end
