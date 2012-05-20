# coding: utf-8
require 'csv'
require './knowledge_base.rb'



aa = KnowledgeBase.new
csv = CSV.open('all_data.csv', 'r')

csv.each do |row|
  row[2].split(' ').each do |emotion|
      aa.add_knowledge [row[1], emotion]
  end
end

puts aa.get_knowledge_map_clone
      
