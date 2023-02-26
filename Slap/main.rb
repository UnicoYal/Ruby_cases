# frozen_string_literal: true

# Case
module Slap
  def merge_all(hash, *hashes)
    hash.merge(*hashes)
  end
end
