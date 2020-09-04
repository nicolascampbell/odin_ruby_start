def bubble_sort(numbers)
    changes_made=false;
    tail=numbers.length-2;
    (numbers.length).times do
        for i in 0..tail
            if(numbers[i]>numbers[i+1])
                zw=numbers[i+1];
                numbers[i+1]=numbers[i];
                numbers[i]=zw;
                changes_made=true;
            else
                changes_made=false;
            end
        end
        tail-=1;
    end      
    return numbers;
end
print bubble_sort([4,3,78,2,0,2])