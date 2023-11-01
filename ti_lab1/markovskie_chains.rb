# frozen_string_literal: true

# марковские цепи
class MarkovChain
  class << self
    def process(text)
      new(text).frequencies
    end
  end

  def initialize(text)
    @text = text.downcase.gsub(/[[:punct:]]/, '').gsub(/\n/, '')
    @letter_frequency = {}
    @pair_frequency = {}
  end

  def frequencies
    pairs = @text.chars.each_cons(2).map(&:join)
    pairs.each do |pair|
      next if @pair_frequency.key?(pair)

      @pair_frequency[pair] = pairs.count(pair).to_f / pairs.size

      pair.each_char do |char|
        next if @letter_frequency.key?(char)

        @letter_frequency[char] = @text.count(char).to_f / @text.size
      end
    end
    @letter_frequency = @letter_frequency.sort_by { |_, value| -value }.to_h
    @pair_frequency = @pair_frequency.sort_by { |_, value| -value }.to_h

    self
  end

  def generate_sequence(close)
    case close
    when 0
      chain = ('а'..'я').to_a + [' ']
      Array.new(30) { chain.sample }.join
    when 1
      Array.new(30) { best_random_element(@letter_frequency) }.join
    when 2
      Array.new(15) { best_random_element(@pair_frequency) }.join
    end
  end

  private

  def best_random_element(hash)
    weights = hash.values
    total = weights.sum
    num = rand(0..total)
    n = 0

    hash.keys.each_with_index do |value, i|
      n += weights[i]
      return value if n >= num
    end
  end
end

text = File.open('text.txt').read

3.times do |i|
  puts "Сгенерированные последовательности (#{i}-е приближение):"
  puts MarkovChain.process(text).generate_sequence(i)
end
