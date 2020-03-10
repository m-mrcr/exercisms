class Complement
  def self.of_dna(input)
    rna_complement = ''
    complements = {'G'=>'C', 'C'=>'G', 'T'=>'A', 'A'=>'U'}
    components = input.split('')
    for component in components
      rna_complement << complements[component]
    end
    rna_complement
  end
end