# frozen_string_literal: true

# Case
module Fet
  def self.setup_env(key, hash)
    new_config = {}.merge(hash)
    new_config.fetch(key) { yield(new_config, key) }
    new_config
  end
end
# END