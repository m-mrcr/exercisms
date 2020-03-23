class ResistorColorDuo
  def self.value(colors)
    resistors = %w[black brown red orange yellow green blue violet grey white].zip(0..).to_h
    colors[0..1].map {|color| resistors[color].to_s}.join.to_i
  end
end