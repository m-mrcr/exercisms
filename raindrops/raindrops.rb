class Raindrops
    def self.convert(number)
        output = ""
        hash = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
        hash.each {|i| output << i[1] if number % i[0] == 0 }
        output == "" ? number.to_s : output
    end
end