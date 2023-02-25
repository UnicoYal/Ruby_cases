# frozen_string_literal: true

# Case
module ArrTimes
  def self.sort_cases(data)
    data.sort_by do |row|
      day, month, year = row[0].split('-')
      Time.new(year, month, day)
    end.reverse
  end
end
