# frozen_string_literal: true

require_relative 'main'

RSpec.describe Invert do
  describe 'function' do
    it 'should works' do
      expect { invert_case('Hello, World!') == 'hELLO, wORLD!' }
      expect { invert_case('I loVe JS') ==  'i LOvE js' }
    end
  end
end