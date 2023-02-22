# frozen_string_literal: true

require_relative 'main'

RSpec.describe Types do

  describe 'function' do
    it 'should works' do
      expect { type_of_type(3) == :simple }
      expect { type_of_type('hexlet') == :simple }
      expect { type_of_type(['hexlet']) == :complex }
      expect { type_of_type(0..42) == :complex }
      expect { type_of_type({ one: 'two' }) == :complex }
    end
  end
end