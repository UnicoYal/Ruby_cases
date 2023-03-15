# frozen_string_literal: true

require_relative 'main'

RSpec.describe Case do
  describe 'function' do
    it 'should works' do
      arr = [2, 3, -8, -1, 2, 4, -2, 3]
      expect(described_class.max_sum(arr)).to eq(7)
    end
  end
end
