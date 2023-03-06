# frozen_string_literal: true

require_relative 'main'

RSpec.describe Hashes do
  describe 'function' do
    it 'should works' do
      text = 'php ruby php java javascript go go go'
      expected = {
        'php' => 2,
        'ruby' => 1,
        'java' => 1,
        'javascript' => 1,
        'go' => 3
      }
      expect(described_class.get_words_count_by_lang(text)).to eq(expected)
    end
  end
end
