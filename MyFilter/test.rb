# frozen_string_literal: true

require_relative 'main'

RSpec.describe MyFilter do
  describe 'function' do
    it 'should works' do
      expect { my_filter([1, 2], &:even?) == [2] }
      expect { my_filter([1, 2, 3, 4], &:even?) == [2, 4] }
      expect { my_filter([1, 2, 3, 4], &:odd?) == [1, 3] }
    end
  end
end
