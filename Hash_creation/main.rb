# frozen_string_literal: true

# Case
module Hashes
  def self.get_words_count_by_lang(some_string)
    res_hash = {}
    some_string.split.each do |el|
      res_hash[el] ||= 0
      res_hash[el] += 1
    end
    res_hash
  end
end
