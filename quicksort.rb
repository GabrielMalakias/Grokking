class Quicksort
  def call(items)
    return items if items.size < 2

    pivot_index = random_index(items.size - 1)
    pivot = items.delete_at(pivot_index)

    smaller = items.select { |number| number < pivot }
    bigger = items.select { |number| number > pivot }

    call(smaller) + [pivot] + call(bigger)
  end

  private

  def random_index(size)
    (0...size).to_a.sample
  end
end
