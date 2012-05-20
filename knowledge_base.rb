# -*- coding: utf-8 -*-
class KnowledgeBase
  def initialize
    @knowledge_map = Hash.new { |hash, key| hash[key] = [] }
  end

  def add_knowledge(knowledge)
    @knowledge_map[knowledge[0]] << knowledge[1]
  end

  # results内の要素は、それぞれ互いに等しい(同義語関係)ことが期待されている?
  def get_results_from(condition)
    return @knowledge_map[condition]
  end

  def get_conditions_from(result)
    conditions = []
    @knowledge_map.each_pair do |knowledge|
       conditions << knowledge[0] if knowledge[1].index(result)
    end
    return conditions
  end

  def get_knowledge_map_clone
    return @knowledge_map.clone
  end
end
