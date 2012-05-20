# -*- coding: utf-8 -*-
class KnowledgeBase
  def initialize
    @knowledges_map = Hash.new { |hash, key| hash[key] = [] }
  end

  def add_knowledge(knowledge)
    @knowledges_map[knowledge[0]] << knowledge[1]
  end

  # results内の要素は、それぞれ互いに等しい(同義語関係)ことが期待されている?
  def get_results_from(condition)
    return @knowledges_map[condition]
  end

  def get_conditions_from(result)
    conditions = []
    @knowledges_map.each_pair do |knowledge|
       conditions << knowledge[0] if knowledge[1].index(result)
    end
    return conditions
  end

  def get_knowledges_map_clone
    return @knowledges_map.clone
  end
end
