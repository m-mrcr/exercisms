class Integer
  letters = %w[ M CM D CD C XC L XL X IX V IV I]
  values  = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  NUMERALS = letters.zip(values).to_h

  def to_roman
    num = self
    NUMERALS.map {|ltr, val| (amt, num) = num.divmod(val); ltr * amt}.join
  end
end