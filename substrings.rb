def substrings(query, dictionary)
  results = {}
  
  subquery = query.downcase.split(" ")
  
  dictionary.map do |num|
    counter = 0
    
    for i in 0..subquery.length
      string = subquery[i].to_s

      if string.include?(num) == true
        counter += 1
      end
      if counter > 0
        results[num] = counter
      end
    end
  end

  puts results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)