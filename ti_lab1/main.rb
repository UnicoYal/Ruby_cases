# frozen_string_literal: true

require 'google_search_results'

PRIVATE_KEY = '61b19d0fa6dcda66c97375d6b0fe72fe6a17b642b6cd9ead6f3714a588e1ef89'
N = 25_270_000_000.0
LIMIT = 9

module Analizer
  def self.high_freqency(string)
    words = string.downcase.gsub(/[[:punct:]]/, '').split
    text_size = words.size
    result = {}

    words.each do |word|
      next if result.key?(word)

      result[word] = words.count(word).to_f / text_size
    end

    result.sort_by { |_, value| -value }.to_h
  end

  def self.ngd(word_1, word_2)
    f_word_1 = GoogleSearch.new(q: word_1, serp_api_key: PRIVATE_KEY).get_hash.dig(:search_information, :total_results)
    f_word_2 = GoogleSearch.new(q: word_2, serp_api_key: PRIVATE_KEY).get_hash.dig(:search_information, :total_results)
    f_both = GoogleSearch.new(q: "#{word_1} #{word_2}", serp_api_key: PRIVATE_KEY).get_hash.dig(:search_information, :total_results)

    ([Math.log(f_word_1, 2), Math.log(f_word_2, 2)].max - Math.log(f_both, 2)) / (Math.log(N, 2) - [Math.log(f_word_1, 2), Math.log(f_word_2, 2)].min)
  end

  def self.analize_ngd(text, number = 2)
    words = Analizer.high_freqency(text).first(number).to_h
    words.each { |w, f| pp "Слово: #{w}, Частота: #{f}" }

    pairs = words.keys.combination(2).to_a
    pairs.delete_if { |w1, w2| w1.equal?(w2) }

    pairs.map do |pair|
      ngd = Analizer.ngd(pair.first, pair.last)
      pair.append(ngd)
    end

    i = 1
    pairs.sort_by { |inner_array| inner_array[2] }.each do |w1, w2, ngd|
      pp "#{i}: Слово 1: #{w1}, Слово 2: #{w2}, NGD: #{ngd}"
      i += 1
    end
  end
end

text = File.open('text.txt').read
Analizer.analize_ngd(text, LIMIT)
