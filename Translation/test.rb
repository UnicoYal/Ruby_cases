# frozen_string_literal: true

require_relative 'main'

RSpec.describe Conv do
  describe 'function' do
    it 'should works' do
      strings = ['wow?', 'One?', 'tWo!', 'THREE']
      expect(described_class.convert(strings)).to eq(['one?', 'wow?'])
    end
  end
end
