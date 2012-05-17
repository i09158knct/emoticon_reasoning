# ExpertSystem
class KnowledgeBase
  def initialize
    @knowledge_map = Hash.new
  end

  def add_knowledge(knowledge)
    if @knowledge_map[knowledge[0]]
      @knowledge_map[knowledge[0]] << knowledge[1]
    else
      @knowledge_map[knowledge[0]] = [knowledge[1]]
    end
  end

  def get_knowledge_map_clone
    return @knowledge_map.clone
  end
end
