class BinarySearch
  def call(items, low, high, target)
    mid = low + (high - low) / 2

    return nil if low > high

    current = items[mid]

    return mid if current == target

    if target > current
      call(items, mid + 1, high, target)
    elsif target < current
      call(items, low, mid - 1, target)
    end
  end
end
