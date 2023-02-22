# frozen_string_literal: true

require_relative 'main'

RSpec.describe Block do
    describe 'function' do
        it 'should works 1' do
          output = "3\n2\n1\n"
          expect(described_class.show_me_numbers(3)).to eql(output)
        end
      
        it 'should works 1' do
          output = "4\n3\n2\n1\n"
          expect(described_class.show_me_numbers(4)).to eql(output)
        end
      end
end