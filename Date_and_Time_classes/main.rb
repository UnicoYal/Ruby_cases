# frozen_string_literal: true

require 'date'

module DateAndTime
  def self.next_day
    tomorrow = Date.today.next
    Time.new tomorrow.year, tomorrow.month, tomorrow.day
  end
end
