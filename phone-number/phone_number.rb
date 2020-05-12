class PhoneNumber
  def self.clean number
    pn = number.gsub(/^\+?1|\D/, '')
    return pn if correctly_formatted(pn)
  end

  private

  def self.correctly_formatted pn
    pn.length == 10 &&
    [pn[0], pn[3]].all? {|v| v.to_i > 1}
  end
end