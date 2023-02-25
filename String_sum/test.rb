# frozen_string_literal: true

require_relative 'main'

RSpec.describe Happy do
  describe 'function' do
    it 'should works' do
      expect { happy? 33 }
      expect { !happy? 3833 }
      expect { happy? 123_321 }
      expect { happy? 666_666 }
      expect { !happy? 123_456 }
    end
  end
end