# frozen_string_literal: true

require_relative 'main'

RSpec.describe BetweenMod do
  describe 'function' do
    it 'should works' do
      expect(described_class.valid_date?('11-11-2011')).to eq(true)
      expect(described_class.valid_date?('31-01-2011')).to eq(true)
      expect(described_class.valid_date?('11-13-2011')).to eq(false)
      expect(described_class.valid_date?('55-11-2011')).to eq(false)
    end
  end
end