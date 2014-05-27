#create a heap

def left(i)
  ((i+1)*2)-1
end

def right(i)
  (i+1)*2
end

def heapify(h, root)
  max = root
  l, r = left(root), right(root)
  if ( l < h.size && h[l] > h[max])
    max = l
  end
  if ( r < h.size && h[r] > h[max])
    max = r
  end
  if( root != max)
      h[root], h[max] = h[max], h[root]
    return heapify(h, max)
  else
    return h
  end
end

def heap_sort (list)
  sl = []
  heap = build_heap(list)
  heap.size.times do
    sl << heap.shift
    heap = heapify(heap, 0)
  end
  sl.reverse
end