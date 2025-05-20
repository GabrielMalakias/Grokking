class BreathFirst
  @queue = []

  def call(graph, check_function)
    @queue = graph['you']
    checked = ['you']

    until @queue.empty?
      person = @queue.delete_at(0)

      next if checked.include?(person)

      return person if check_function.call(person)

      checked += [person]
      @queue += graph[person]
    end
  end
end
