# frozen_string_literal: true

require_relative 'main'

RSpec.describe ArrTimes do
  describe 'function' do
    data1 = [
      ['11-9-2020', 'france', 10_000],
      ['11-10-2020', 'usa', 35_000],
      ['13-12-2020', 'india', 55_000],
      ['12-11-2020', 'france', 13_000],
      ['12-12-2020', 'usa', 22_000],
      ['11-12-2020', 'india', 54_000]
    ]

    it 'should works' do
      expected1 = [
        ['13-12-2020', 'india', 55_000],
        ['12-12-2020', 'usa', 22_000],
        ['11-12-2020', 'india', 54_000],
        ['12-11-2020', 'france', 13_000],
        ['11-10-2020', 'usa', 35_000],
        ['11-9-2020', 'france', 10_000]
      ]

      actual1 = described_class.sort_cases(data1)
      expect(actual1).to eq(expected1) 
    end
  end
end
