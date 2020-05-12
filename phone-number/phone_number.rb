class PhoneNumber
  def self.clean number
    pn = number.gsub(/^\+?1|\D/, '')
    return pn if correctly_formatted(pn)
  end

  private

  def self.correctly_formatted input
    input.length == 10 &&
    input.split('').values_at(0, 3).all? {|v| v.to_i > 1}
  end
end