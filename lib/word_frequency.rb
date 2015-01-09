class String
  define_method(:word_frequency) do |words|
    words_array = words.split(" ")
    count_array = []

    if words_array.include?(self)
        words_array.each() do |word|
          if self == word
            count_array.push(1)
          end
        end
    else
      returns "Your word does not appear in these words!"
    end

    sum = 0
    count_array.each() do |number|
      sum = sum.+(number)
    end
    sum
  end
end
