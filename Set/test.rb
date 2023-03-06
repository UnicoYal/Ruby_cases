# frozen_string_literal: true

require_relative 'main'

RSpec.describe Sets do
  describe 'function' do
    it 'should works' do
      actual = described_class.gen_diff(
        { one: 'eon', two: 'two', four: true },
        { two: 'own', zero: 4, four: true }
      )
  
      expected = {
        one: 'deleted',
        two: 'changed',
        four: 'unchanged',
        zero: 'added'
      }
  
      expect(actual).to eq(expected)
    end
  end
end
