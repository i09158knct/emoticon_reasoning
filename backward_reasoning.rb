# -*- coding: utf-8 -*-
require './data_getter.rb'

CSV_FILE_PATH = './all_data.csv'

emotion_knowledges = get_emotion_knowledges(CSV_FILE_PATH)
emoticon_knowledges = get_emoticon_knowledges(CSV_FILE_PATH)


emoticon = ARGV[0] || 'orz'

emotions = emoticon_knowledges.get_conditions_from emoticon
sentences = []
emotions.each do |emotion|
   sentences += emotion_knowledges.get_conditions_from emotion
end
sentences.uniq!

puts '---顔文字---'
puts emoticon
puts ''
puts '---感情---'
puts emotions
puts ''
puts '---文章---'
puts sentences
puts ''
