# class String
#   define_method(:word_frequency) do |words|
#     words = words.downcase()
#     original_word = self.downcase()
#     words_array = words.split(/[\s,'!.-_"?]/)
#     count_array = []
#
#     if words_array.include?(original_word)
#         words_array.each() do |word|
#           if original_word == word
#             count_array.push(1)
#           end
#         end
#     else
#       return "Your word does not appear in these words!"
#     end
#
#     sum = 0
#     count_array.each() do |number|
#       sum = sum.+(number)
#     end
#     sum
#   end
# end

class String
  define_method(:word_frequency) do |words|
    words = words.downcase()
    original_word = self.downcase()
    words_array = words.split(/[\s,'!.-_"?]/)
    count_array = []

    if words_array.include?(original_word)
      words_array.each() do |word|
        if original_word == word
          count_array.push(1)
        end
      end
    else
      return 0 #"Your word does not appear in these words!"
    end

    sum = 0
    count_array.each() do |number|
      sum = sum.+(number)
    end
    sum
  end
end
