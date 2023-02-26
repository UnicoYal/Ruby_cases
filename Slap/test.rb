# frozen_string_literal: true

require_relative 'main'

RSpec.describe Slap do
  describe 'function' do
    it 'should works' do
      hash1 = { key: 'value' }
      hash2 = { key2: 'value2' }
      hash3 = { key3: 'value3', key: 'new value' }

      result = { key: 'new value', key2: 'value2', key3: 'value3' }
      expect { merge_all(hash1, hash2, hash3) == result }
    end
  end
end
