class BubbleSort
  def call(items)
    ordered = []

    until items.empty?
      index = search_smallest_item(items)
      smallest_item = items.delete_at(index)
      ordered.append(smallest_item)
    end

    ordered
  end

  private

  def search_smallest_item(items)
    smallest = 0

    items.each_with_index do |item, index|
      smallest = index if item < items[smallest]
    end

    smallest
  end
end
