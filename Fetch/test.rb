# frozen_string_literal: true

require_relative 'main'

RSpec.describe Fet do
  describe 'test setup_env' do
    it 'should works' do
      env = { api_key: 123 }
      no_key = described_class.setup_env(
        :host,
        env
      ) { |config, key| config[key] = 'localhost' }
  
      expected = { api_key: 123, host: 'localhost' }
  
      expect(no_key).to eq(expected)
      expect(env).to eq({ api_key: 123 })
    end
  end
end
