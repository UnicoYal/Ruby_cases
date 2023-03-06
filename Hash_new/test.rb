# frozen_string_literal: true

require_relative 'main'

RSpec.describe HashNew do
  describe 'get_adjacency_matrix' do
    it 'should works' do
      collection = [
        %w[Vasy Pety],
        %w[Vasy Oksana],
        %w[Vasy Egor],
        %w[Egor Pety],
        %w[Egor Georgiy],
        %w[Oksana Andrey]
      ]
  
      expected = {
        Vasy: %w[Pety Oksana Egor],
        Egor: %w[Pety Georgiy],
        Oksana: ['Andrey']
      }
  
      expect(described_class.get_adjacency_matrix(collection)).to eq(expected)
    end
  end
end
