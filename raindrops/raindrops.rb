class Raindrops
    def self.convert(number)
        hash = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
        output = hash.each_with_object("") {|i, str| str << i[1] if number % i[0] == 0 }
        output == "" ? number.to_s : output
    end
end