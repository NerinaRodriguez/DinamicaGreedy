levenshtein::String->String->Int
levenshtein s t =
    sum [distance (n,m) s t|n<-[0..length s],m<-[0..length t],(n==m)]
          
distance (i,0) s t = i
distance (0,j) s t= j
distance (i,j) s t= if (s!!(i-1)==t!!(j-1)) then 0 else 1



