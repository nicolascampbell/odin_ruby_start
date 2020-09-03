def substrings(frase,dictionary)
    frase.downcase!
    dictionary.reduce(Hash.new(0)) do |sum, word|
        offset=word.length;
        frase_saver=frase;
        space=0;
        while (frase_saver.include? word )&& space<frase_saver.length do
            sum[word] += 1;
            space=offset+frase_saver.index(word);
            frase_saver=frase_saver[space,frase_saver.length-1]  
        end
        sum
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)