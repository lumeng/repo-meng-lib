-- Quick-sort in Haskell.

--

-- Specify the function signature, in particular input and output types. 
quicksort::(Ord e) => [e] -> [e]

-- Define behavior for an empty list.
quicksort([])=[]

-- General recursive definition.
quicksort(first:rest) = (quicksort lesser) ++ [first] ++ (quicksort greater)
    where lesser = filter (< first) rest
          greater = filter (>= first) rest         
