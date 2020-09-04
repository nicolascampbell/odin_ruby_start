def bubble_sort(numbers)
    changes_made=false;
    tail=numbers.length-2;
    loop do
        changes_made=false;
        for i in 0..tail
            if(numbers[i]>numbers[i+1])
                zw=numbers[i+1];
                numbers[i+1]=numbers[i];
                numbers[i]=zw;
                changes_made=true;
            end
        end
        break if (changes_made==false);
    end
    return numbers;
end
print bubble_sort([4,3,78,5,-77,2])