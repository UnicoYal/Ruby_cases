# frozen_string_literal: true

require_relative 'main'

RSpec.describe ObjEach do
  describe 'function' do
    it 'should works' do
      sentence = 'hexlet helps people to become developers'
      actual = described_class.words_by_letters(sentence)
      expected = {
        'b' => ['become'],
        'd' => ['developers'],
        'h' => %w[helps hexlet],
        'p' => ['people'],
        't' => ['to']
      }
      expect(actual).to eq(expected)
      expect(actual.keys).to eq(expected.keys)
    end
  end
end
