# frozen_string_literal: true

require_relative 'main'

RSpec.describe LastHash do
  describe 'function' do
    it 'should works' do
      actual1 = described_class.link_to 'name', '/url'
      expected1 = '<a href="/url">name</a>'
      expect { actual1 == expected1 }

      actual2 = described_class.link_to 'name', '/url', class: 'link'
      expected2 = '<a href="/url" class="link">name</a>'
      expect { actual2 == expected2 }
    end
  end
end
