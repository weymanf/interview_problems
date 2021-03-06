#finding the deepest pit
#P Q R 


def deepist_pit(ar)
  depth = 0
  l = nil
  q = nil
  r = nil
  
  ar.each_with_index do | el, i |
 
    if (l.nil? && el < ar[i-1]) ||  el == ar[i - 1]
      l = ar[i-1]
    end
    
    
    if l && q.nil? && el > ar[i - 1]
      q = ar[i -1]
     end
     

    if ((l && q && r.nil?) && (el < ar[i-1] || i + 1== ar.length )) 
     
        r = [ar[i], ar[i - 1]].max
   
      depth = [depth, [ l - q, r - q].min ].max
      l = ar[i - 1]
      q = nil
      r = nil

    end

  end

 depth == 0 ? -1 : depth
  
end