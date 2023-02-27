# frozen_string_literal: true

require_relative 'main'

RSpec.describe Conv do
  describe 'function' do
    it 'should works' do
      strings = ['wow?', 'One?', 'tWo!', 'THREE']
      expect { convert(strings) == ['one?', 'wow?'] }
    end
  end
end
