# ExpertSystem
class KnowledgeBase
  def initialize
    @knowledge_map = Hash.new { |hash, key| hash[key] = [] }
  end

  def add_knowledge(knowledge)
    @knowledge_map[knowledge[0]] << knowledge[1]
  end

  def get_knowledge_map_clone
    return @knowledge_map.clone
  end
end
