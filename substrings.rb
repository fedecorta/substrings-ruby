dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string,array)
    hash = {}
    string = string.downcase.split(" ")
    string.each do |word|
        array.each do |substring|
            if word.include?(substring)
                if hash[substring]
                    hash[substring] += 1
                else
                    hash[substring] = 1
                end
            end
        end
    end
    p hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
