#So here starts the method
def caesar (message,shift=0)
    #checks the case that the message is no good
    if !message.nil? &&!message.empty?
        #declare var where we will save the final message
        s_message="";
        #Initialize helper by negative shifts
        sign_helper=shift==0? 0: shift/shift.abs;
        #Checking each char of the string and transforming them if needed
        message.each_char do |c|
            code=c.ord;
            #for Mayus
            if (code>=65&&code<=90) 
                code+=shift%26;
                if(code>90||code<65)
                code=code-sign_helper*26;
                end
            #for minus
            elsif (code<=122&&code>=97)
                code+=shift%26;
                if (code>122||code<97) 
                code=code-sign_helper*26;
                end
            end
            #in any case save the last transformation or not of the char
            s_message+=code.chr;
        end
    #In case message string is null or empty 
    else
        return "Message cant be transformed"
    end
    return s_message
end
puts caesar("a,!bc!dA",1)