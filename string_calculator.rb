class StringCalculator
  class << self

    def add numbers
      return 0 if numbers.empty?

      numbers.split(',').sum(&:to_i)
    end

  end

end