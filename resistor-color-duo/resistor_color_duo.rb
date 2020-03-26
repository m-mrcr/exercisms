class ResistorColorDuo
  RESISTORS = %w[black brown red orange yellow green blue violet grey white].zip(0..).to_h
  
   def self.value(colors)
    colors.first(2).map {|color| RESISTORS[color].to_s}.join.to_i
  end
end