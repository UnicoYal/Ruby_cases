# frozen_string_literal: true

require_relative 'main'

RSpec.describe Types do

  describe 'function' do
    it 'should works' do
      expect(described_class.type_of_type(3)).to eq(:simple) 
      expect(described_class.type_of_type('hexlet')).to eq(:simple)
      expect(described_class.type_of_type(['hexlet'])).to eq(:complex)
      expect(described_class.type_of_type(0..42)).to eq(:complex)
      expect(described_class.type_of_type({one: 'two' })).to eq(:complex)
    end
  end
end