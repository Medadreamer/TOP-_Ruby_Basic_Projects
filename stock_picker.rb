require 'pry-byebug'
def evaluator(array)
    lowest = array.sort[0]
    new_array = array
    if array.index(lowest) != 0 && array.length > 2
        first_part = array.slice(0, array.index(lowest))
        second_part = array.slice(array.index(lowest), array.length - 1)
        new_array = Array.new
        new_array.concat(evaluator(first_part))
        new_array.push(second_part)
    else
        return Array.new.push(array)
    end
    new_array
end

def stock_picker(array)
    evaluated_stocks = evaluator(array)
    profits = evaluated_stocks.map do |evaluation|
        if evaluation.length < 2
            0
        else        
            evaluation.sort[evaluation.length - 1] - evaluation[0]
        end
    end
    days_index = profits.index(profits.max)
    best_day_to_sell = array.index(evaluated_stocks[days_index].sort[evaluated_stocks[days_index].length - 1])
    best_day_to_buy = array.index(evaluated_stocks[days_index][0])
    [best_day_to_buy, best_day_to_sell]
end



p stock_picker([17,3,6,9,15,8,6,1,10])