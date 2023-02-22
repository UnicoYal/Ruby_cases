# frozen_string_literal: true

require_relative 'main'

RSpec.describe DateAndTime do

  describe 'function' do
    it 'should works' do
      today = Date.today
      tomorrow = today.next
      t = Time.new tomorrow.year, tomorrow.month, tomorrow.day
      puts t
      expect { next_day == t }
    end
  end
end