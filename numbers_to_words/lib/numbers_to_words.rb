class String
  def numbers_to_words
    first_digit = {
      "1" => "one",
      "2" => "two",
      "3" => "three",
      "4" => "four",
      "5" => "five",
      "6" => "six",
      "7" => "seven",
      "8" => "eight",
      "9" => "nine"
    }

    tens = {
      "1" => "eleven",
      "2" => "twelve",
      "3" => "thirteen",
      "4" => "fourteen",
      "5" => "fifteen",
      "6" => "sixteen",
      "7" => "seventeen",
      "8" => "eighteen",
      "9" => "nineteen"
    }

    second_digit = {
      "2"  => "twenty",
      "3"  => "thirty",
      "4"  => "fourty",
      "5"  => "fifty",
      "6"  => "sixty",
      "7"  => "seventy",
      "8"  => "eighty",
      "9"  => "ninety"
    }

    input_array = self.split('')
    number_word = ""

    input_array.each_with_index do |number, index|
      if index.eql?(input_array.length - 1)
        number_word << first_digit.fetch(number)
      elsif index.eql?(input_array.length - 2)
        if input_array.at(input_array.length - 2).eql?("1")
          number_word << tens.fetch(number)
        else
          number_word << "#{second_digit.fetch(number)} "
        end
      elsif index.eql?(input_array.length - 3)
        number_word << "#{first_digit.fetch(number)} hundred "
      end
    end
    number_word
  end
end
