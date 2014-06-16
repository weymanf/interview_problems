#Write a method that takes a hash of symbol keys, for which the values are integers representing each key's weight. The method returns a key such that the chances of selecting a particular key are weighted by that key's value.

#For the hash {:a => 1, :b => 2, :c => 3}, the chance of returning :c is 1/2, :b is 1/3, and :a is 1/6.



weights = {:a => 1, :b => 2, :c => 3}

=begin 
  ULTRA NAIVE SOLUTION by Weyman Fung

  def weighted_keys(weights)
    ar = []
    weights.each do |key , value|
      ar << [key] * value
    end

    ar.flatten.sample
  end


=end

def weighted_keys(weights)
  



end