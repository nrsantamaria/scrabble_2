class String
  define_method(:scrabble) do
    input_array = self.upcase.split("")
    total = 0
    letters = {
      ["A","E","I","O","U","L","N","R","S","T"] => 1,
      ["D","G"] => 2,
      ["B","C","M","P"] => 3,
      ["F","H","V","W","Y"] => 4,
      ["K"] => 5,
      ["J","X"] => 8,
      ["Q","Z"] => 10,
    }

    letters.each do |key, value|
      input_array.each do |letter|
        if key.include?(letter)
          total += value
        end
      end
    end
    total
  end
end
