# frozen_string_literal: true

require_relative 'main'

RSpec.describe Invert do
  describe 'function' do
    it 'should works' do
      expect(described_class.invert_case('Hello, World!')).to eq('hELLO, wORLD!')
      expect(described_class.invert_case('I loVe JS')).to eq('i LOvE js')
    end
  end
end