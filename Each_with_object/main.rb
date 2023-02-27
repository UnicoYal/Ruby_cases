# frozen_string_literal: true

# Case
module ObjEach
  def self.words_by_letters(some_string)
    res = some_string.split.sort.each_with_object({}) do |word, acc|
      acc[word[0]] ||= []
      acc[word[0]] << word
    end
  end
end
