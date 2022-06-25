def bubble_sort(array)
    another_round = false
    
    new_array = array.each_index do |index|
        temp = []
        if index < array.length - 1 && array[index] > array[index + 1]
            temp.push(array[index + 1], array[index])
            array[index] = temp[0]
            array[index + 1] = temp[1]
        end
    end

    new_array.each_index do |index|
        if index < array.length - 1 && array[index] > array[index + 1]
            another_round = true
            break
        end
    end

    if another_round
        new_array = bubble_sort(new_array)
    end

    new_array
end

p bubble_sort([1, 5, 8, 8, 868, 88, 64, 4, 27]
)
