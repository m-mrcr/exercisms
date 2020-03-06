class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  def self.color_code(color)
    hash = Hash[COLORS.map.with_index.to_a]
    hash[color]
  end
end