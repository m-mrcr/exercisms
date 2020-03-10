class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  
  def self.color_code(color)
    hash = Hash[COLORS.map.with_index.to_a]
    hash[color]
  end

  def self.value(colors)
    value = ''
    for color in colors do
      value << color_code(color).to_s
    end
    value[0..1].to_i
  end
end