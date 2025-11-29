 def substring(word, dictionary)
  dictionary.inject(Hash.new(0)) do |result, words|
    # result[words] += 1 if word.downcase.include?(words.downcase)
    if word.downcase.include?(words.downcase) then result[words] += 1 end
    result 
  end
end
p substring("below", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])



# # # def substring(word, dictionary)
# # #   dictionary.inject(Hash.new(0)) do |result, words|
# # #     if word.downcase.include?(words.downcase)
# # #       result[words] += 1
# # #     end
# # #     result
# # #   end 
# # # end
# # #
# # # p substring("below", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
# # # p substring("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
# #
# #
# # def substring(word, dictionary)
# #   result = Hash.new(0)
# #   word.downcase.split.each do |s_word|
# #     dictionary.each do |ss_word|
# #       if s_word.include?(ss_word.downcase)
# #         result[ss_word] += 1
# #       end
# #     end
# #   end
# #   result
# # end
# #
# #
# #
# # p substring("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
# # p substring("below", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
#
# def substring(word, dictionary)
#   word.downcase.split.inject(Hash.new(0)) do |result, wording|
#     dictionary.each do |word_in_dict|
#       if wording.include?(word_in_dict.downcase)
#         result[word_in_dict] += 1
#       end
#     end
#     result
#   end
# end
#
# p substring("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
# p substring("below", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])

