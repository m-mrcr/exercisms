class PhoneNumber
  def self.clean number
    $1 if number.gsub(/\D/, '') =~ /\A1?([2-9]\d{2}[2-9]\d{6})\z/
  end
end
