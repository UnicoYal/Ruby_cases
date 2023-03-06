# frozen_string_literal: true

require_relative 'main'

RSpec.describe MyNumber do

  describe 'function' do
    it 'should works' do
      expect(described_class.reverse_int(123)).to eq(321)
      expect(described_class.reverse_int(-34)).to eq(-43)
    end
  end
end