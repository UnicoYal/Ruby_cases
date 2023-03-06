# frozen_string_literal: true

# Case
module Case
  def self.plainify(hash)
    hash.keys.flat_map do |band_name|
      hash[band_name].map {|song| {band: band_name, song: song}}
    end
  end
end
