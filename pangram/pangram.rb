module Pangram
  module_function
  ABC = ("A".."Z").to_a

  def pangram?(sentence)
     ABC == sentence
              .upcase
              .scan(/[A-Z]/)
              .sort
              .uniq
  end
end