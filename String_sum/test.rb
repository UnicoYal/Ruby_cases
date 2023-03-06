# frozen_string_literal: true

require_relative 'main'

RSpec.describe Happy do
  describe 'function' do
    it 'should works' do
      expect(described_class.happy? 33).to eq(true)
      expect(described_class.happy? 3833).to eq(false) 
      expect(described_class.happy? 123_321).to eq(true)
      expect(described_class.happy? 666_666).to eq(true)
      expect(described_class.happy? 123_456).to eq(false) 
    end
  end
end