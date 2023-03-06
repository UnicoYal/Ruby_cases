# frozen_string_literal: true

require_relative 'main'

RSpec.describe Reverse do
  describe 'function' do
    it 'should works' do
      expect(described_class.reverse('hexlet')).to eq('telxeh')
      expect(described_class.reverse('ruby')).to eq('ybur')
    end
  end  
end