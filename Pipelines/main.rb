# frozen_string_literal: true

# Case
module Pipe
  def get_men_count_by_year(users)
    men = users.filter { |u| u[:gender] == 'male' }
    years = men.map { |m| Time.new(m[:birthday]).year.to_s }
    years.each_with_object({}) do |year, acc|
      acc[year] ||= 0
      acc[year] += 1
    end
  end
end
