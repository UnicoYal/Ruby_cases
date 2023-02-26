# frozen_string_literal: true

# Case
module Blocks
  def apply_blocks(data, blocks)
    blocks.reduce(data) { |acc, block| block.call(acc) }
  end
end
