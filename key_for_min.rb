# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

#name_hash = {"1" => 10, "2" => 50, "3" => 17} 
#name_hash = {1 => 10, 2 => 50, 3 => 17}
#name_hash = {:blake => 10, :ashley => 50, :adam => 17}
#name_hash = {:blake => "Star", :ashley => "wars", :adam => "blue"}

def key_for_min_value(name_hash)
    min_key = " "
    min_value = nil
    #min_key = nil 
        #(also works)
    #min_value = " " 
        #(I belive this works too)
    if name_hash.empty?
        return nil
    end
    name_hash.each do |key, value|
        #if min_value == " "
            #(I belive this works if implemented properly)
        if min_value == nil     
            min_value = value
            min_key = key
        elsif value < min_value
            min_value = value
            min_key = key
        end
    end
    min_key
end

#puts key_for_min_value(name_hash)