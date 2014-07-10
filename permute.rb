#write a function
#where takes an array and a permutation. And returns the next permutation
#i.e permute([1,2,3], 131) => 213
#123, 132, 213, 231


#simple function to make permutations first
def permutations(ar)
   if ar.length == 0
       return [[]]
   end
   
   perms = []
    for i in 0...ar.length
        copy = ar.dup
        head = copy.slice!(i,1)
        rest = permutations(copy)
        rest.each do | combo |
            perms << head + combo    
        end
    
    end
    return perms
end
