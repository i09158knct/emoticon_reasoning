# coding: utf-8
require 'csv'
require './knowledge_base.rb'



aa = KnowledgeBase.new
csv = CSV.open('all_data.csv', 'r')

csv.each do |row|
  if row[2].split(' ')[1]
    row[2].split(' ').each do |emotion|
      aa.add_knowledge [row[1], emotion]
    end
  else
    aa.add_knowledge [row[1], row[2]]
  end
end
      
