# frozen_string_literal: true

require_relative 'main'

RSpec.describe Reverse do
  describe 'function' do
    it 'should works' do
      expect { reverse('hexlet') == 'telxeh' }
      expect { reverse('ruby') == 'ybur' }
    end
  end  
end