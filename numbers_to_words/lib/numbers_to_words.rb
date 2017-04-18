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
      "0"  => "ten",
      "2"  => "twenty",
      "3"  => "thirty",
      "4"  => "fourty",
      "5"  => "fifty",
      "6"  => "sixty",
      "7"  => "seventy",
      "8"  => "eighty",
      "9"  => "ninety"
    }

    input_array = self.reverse.scan(/.{1,3}/)
    number_word = ""

    input_array.each_with_index do |number_group, group_index|

      char_trio = number_group.split("")
      print char_trio
      number_place = ""

      if group_index == 0
        number_place = ""
      elsif group_index == 1
        number_place = "thousand"
      elsif group_index == 2
        number_place = "million"
      elsif group_index == 3
        number_place = "billion"
      elsif group_index == 7
        number_place = "trillion"
      end

      number_word.prepend(" #{number_place} ")

      char_trio.each_with_index do |number, number_index|
        if number_index == 0
          number_word.prepend(first_digit.fetch(number))
        elsif number_index == 2
          number_word.prepend("#{first_digit.fetch(number)} hundred ")
        elsif number_index == 1
          number_word.prepend("#{second_digit.fetch(number)} ")
        end
      end
    end
    number_word.slice!((number_word.length - 2)..number_word.length)
    number_word
  end
end









    # input_array.each_with_index do |number, index|
    #   if index.eql?(input_array.length - 1)
    #     number_word << first_digit.fetch(number)
    #   elsif index.eql?(input_array.length - 2)
    #     if input_array.at(input_array.length - 2).eql?("1")
    #       if input_array.at(input_array.length - 1).eql?("0")
    #         number_word << second_digit.fetch(input_array.at(-1))
    #         break
    #       else
    #         number_word << tens.fetch(input_array.at(-1))
    #         break
    #       end
    #     else
    #       number_word << "#{second_digit.fetch(number)} "
    #     end
    #   elsif index.eql?(input_array.length - 3)
    #     number_word << "#{first_digit.fetch(number)} hundred "
    #   elsif index.eql?(input_array.length - 4)
    #     number_word << "#{first_digit.fetch(number)} thousand "
    #   elsif index.eql?(input_array.length - 5)
    #     if input_array.at(input_array.length - 5).eql?("1")
    #       if input_array.at(input_array.length - 4).eql?("0")
    #         number_word << second_digit.fetch(input_array.at(-1))
    #       else
    #         number_word << tens.fetch(input_array.at(input_array.length - 4))
    #       end
    #     end
    #   end
    # end
    # number_word
