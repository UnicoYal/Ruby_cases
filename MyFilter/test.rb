# frozen_string_literal: true

require_relative 'main'

RSpec.describe MyFilter do
  describe 'function' do
    it 'should works' do
      expect(described_class.my_filter([1, 2], &:even?)).to eq([2])
      expect(described_class.my_filter([1, 2, 3, 4], &:even?)).to eq([2, 4])
      expect(described_class.my_filter([1, 2, 3, 4], &:odd?)).to eq([1, 3])
    end
  end
end
