class PhoneNumber
  def self.clean number
    pn = number
    pn.gsub!("+1",'')
    pn.slice!(0) if pn.length == 11 && pn[0] == "1"
    pn.delete!("\s\n()-.")
    return pn if correctly_formatted(pn)
  end

  private

  def self.correctly_formatted input
    n = input.split('').values_at(0, 3)
    x = input.split('').values_at(1, 2, 4..9)
    verdict = input.length == 10 &&
    n.join.scan(/[2-9]/).count == 2 &&
    x.join.scan(/[0-9]/).count == 8
    return verdict
  end
end