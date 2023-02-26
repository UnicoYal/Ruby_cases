# frozen_string_literal: true

require_relative 'main'

RSpec.describe Blocks do
  describe 'function' do
    it 'should works' do
      proc1 = proc { |x| x + 1 }
      proc2 = proc { |x| x * 2 }

      expect { apply_blocks(5, [proc1, proc2]) == 12 }
      expect { apply_blocks(5, [proc2, proc1]) == 11 }
    end
  end
end
