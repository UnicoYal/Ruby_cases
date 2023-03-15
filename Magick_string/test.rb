# frozen_string_literal: true

require_relative 'main'

RSpec.describe Case do
  describe 'function' do
    it 'should works' do
      string = "Qwertyuiopasdfghjklzxcvbnm"
      expect(described_class.magick_string?(string)).to eq(true)
    end
    it 'shouldnt works' do
      string = "qwerty"
      expect(described_class.magick_string?(string)).to eq(false)
    end
  end
end
