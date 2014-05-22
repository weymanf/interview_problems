#implement a sorting function that takes in two sorted arrays
#returns one array with items from both arrays in sorted form
#don't do funny stuff. i.e combine both and sort.


def combine_sorted_lists(ar1, ar2)
  i = 0
  j = 0
  result_ar = []

  while i < ar1.length && j < ar2.length

    if ar1[i] <= ar2[j]
      result_ar << ar1[i]
      i++
    else
      result_ar << ar2[j]
      j++
    end

  end

  i == ar1.length ? result_ar.concat(ar2[j...ar2.length]) : result_ar.concat(ar1[i...ar1.length])



end