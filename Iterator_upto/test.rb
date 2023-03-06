# frozen_string_literal: true

require_relative 'main'

RSpec.describe Iterator do
  describe 'function' do
    it 'should works' do
      expect ((described_class.average(1, 3) - 2.0).abs) < Float::EPSILON 
      expect ((described_class.average(10, 15) - 12.5).abs) < Float::EPSILON
    end
  end
end