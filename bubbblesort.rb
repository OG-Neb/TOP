dataset = [4,3,78,2,0,2]

def bubble_sort(array)
  (array.length - 1).times do
    swapped = false # Reset swapped to false at the start of each pass

    array.each_with_index do |element, index|
      # Avoid accessing out-of-bounds element for the last index
      break if index == array.length - 1

      if array[index] > array[index + 1]
        # Swap elements
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped = true # Mark as swapped
      end
    end

    # Exit early if no swaps were made during this pass
    break unless swapped
  end

  array # Return the sorted array
end

puts bubble_sort(dataset)