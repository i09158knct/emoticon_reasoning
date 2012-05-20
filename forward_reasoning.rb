# -*- coding: utf-8 -*-
require './data_getter.rb'

CSV_FILE_PATH = './all_data.csv'

emotion_k = get_emotion_knowledges(CSV_FILE_PATH)
emoticon_k = get_emoticon_knowledges(CSV_FILE_PATH)


sentence = ARGV[0] || 'こんにちは。'

emotions = emotion_k.get_results_from sentence
emoticons = []
emotions.each do |emotion|
   emoticons = emoticons + emoticon_k.get_results_from(emotion)
end

puts '---文章---'
puts sentence
puts ''
puts '---感情---'
puts emotions
puts ''
puts '---顔文字---'
puts emoticons
puts ''