# frozen_string_literal: true

require_relative 'main'

RSpec.describe MyNumber do

  describe 'function' do
    it 'should works' do
      expect { MyNumber.reverse_int(123) == 321 }
      expect { MyNumber.reverse_int(-34) == -43 }
    end
  end
end