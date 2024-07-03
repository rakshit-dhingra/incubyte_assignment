class StringCalculator
  class << self

    def add numbers
      return 0 if numbers.empty?
      
      if numbers.start_with?('//')
        numbers = numbers.split(/\n/)[1]
      end
      
      numbers.split(/[,;\n]/).sum(&:to_i)
    end

  end

end