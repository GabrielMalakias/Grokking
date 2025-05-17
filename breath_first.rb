class BreathFirst
  @queue = []

  def call(graph, check_function)
    @queue = graph['you']

    until @queue.empty?
      person = @queue.delete_at(0)

      return person if check_function.call(person)

      @queue += graph[person]
    end
  end
end
