class Raindrops
    DICTIONARY = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
    def self.convert(num)
        output = DICTIONARY.each_with_object("") {|i, str| str << i[1] if num % i[0] == 0 }
        output == "" ? num.to_s : output 
    end
end