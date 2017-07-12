# # Write a function lengths that accepts a single parameter as an argument,
# # namely an array of strings. The function should return an array of numbers.
# # Each number in the array should be the length of the corresponding string.
#
# # def leng_of_strings(arr_of_strings)
# #   nums = []
# #   i = 0
# #   while i < arr_of_strings.length
# #     nums.push(arr_of_strings[i].length)
# #     i = i + 1
# #   end
# #   nums
# # end
#
# def leng_of_strings(arr_of_strings)
#   arr_of_strings.map {|s| s.length}
# end
#
# p leng_of_strings(["Hello","dude"])
#
# def transmogrifier(a,b,c)
#   (a*b)**c
# end
#
# p transmogrifier(5, 4, 3)
#
# def toonify(sentence, accent)
#   if accent == 'daffy'
#     sentence.gsub(/[s]/,'th')
#   elsif
#     sentence.gsub(/[r]/, 'w')
#   else
#     sentence
#   end
# end
#
# p toonify("so you smell like sausage", "daffy")
def word_reverse(string)
  string.split.reverse.join(" ")
end

p word_reverse("Now I know what TV dinner feels like")

def letter_reverse(string)
  rev_string = string.reverse
  split_string = rev_string.split
  rev_sent = split_string.reverse
  final = rev_sent.join(" ")
  final
end

p letter_reverse("Now I know what a TV dinner feels like")
#
# def longest(arr_of_words)
#   longest_word = ""
#   longest_words = []
#   arr_of_words.each do |word|
#     if word.length > longest_word.length
#       longest_words = []
#       longest_word = word
#       longest_words.push(word)
#     elsif word.length == longest_word.length
#       longest_words.push(word)
#     end
#   end
#   longest_words
# end
#
# p longest(["oh", "good", "grief", "hello"])

# 1. Write a for loop that will iterate from 0 to 10.
# For each iteration of the for loop,
# it will multiply the number by 9 and log the result (e.g. "2 * 9 = 18").
# Bonus: Use a nested for loop to show the tables for every multiplier from 1 to 10
# (100 results total).

def times_table
  10.times do |i|
    row = []
    10.times do |x|
      row.push(i * x)
    end
    p row.join(' ').center(50,"~*~")
  end
end

times_table
