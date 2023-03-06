# frozen_string_literal: true

require_relative 'main'

RSpec.describe ArraysIntersection do
  describe 'function' do
    it 'should works' do
      expect(described_class.intersection([1, 3, 8], [9, 3, 1])).to eq([1, 3])
      expect(described_class.intersection([8], [5, 0])).to eq([])
    end
  end
end
