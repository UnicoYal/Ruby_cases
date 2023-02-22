# frozen_string_literal: true

module Block
   
  def self.show_me_numbers num
    str = ''
    num.times {|i| str = "#{str}#{num-i}\n"}
    str
  end
    
end
  