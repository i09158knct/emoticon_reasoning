# coding: utf-8
require 'csv'
require './knowledge_base.rb'


def get_emoticon_knowledges(csv_file_path)
  emoticon_knowledges = KnowledgeBase.new
  csv = CSV.open(csv_file_path, 'r')
  
  csv.each do |row|
    row[2].split(' ').each do |emotion|
      row.slice(3..5).each do |emoticon|
        emoticon_knowledges.add_knowledge [emotion, emoticon] if emoticon
      end
    end
  end
  return emoticon_knowledges
end
      
def get_emotion_knowledges(csv_file_path)
  emotion_knowledges = KnowledgeBase.new
  csv = CSV.open(csv_file_path, 'r')

  csv.each do |row|
    row[2].split(' ').each do |emotion|
      emotion_knowledges.add_knowledge [row[1], emotion]
    end
  end
  return emotion_knowledges
end
