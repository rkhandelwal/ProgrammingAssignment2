## cachematrix

Here are some notes on how to use the functions


############### Example 1 
##   create a 2x2 matrix
> x <- c(1,2)

> y <- c(2,1)

> z <- cbind(x,y)

> z

     x y

[1,] 1 2

[2,] 2 1


## calculate the inv by calling our above functions, so we can check the results later

> solve(z)

        [,1]       [,2]
        
x -0.3333333  0.6666667

y  0.6666667 -0.3333333




##  Now test our functions
> source("cachematrix.R")

> t <- makeCacheMatrix(z)

> cacheSolve(t)

        [,1]       [,2]
        
x -0.3333333  0.6666667

y  0.6666667 -0.3333333



##############  Example 2
> source("cachematrix.R")

> x <- c(1,2,3)

> y <- c(3,2,1)

> z <- c(2,3,1)

> m <- cbind(x,y,z)

> m

     x y z
     
[1,] 1 3 2

[2,] 2 2 3

[3,] 3 1 1



> solve(m)

         [,1]        [,2]        [,3]
         
x -0.08333333 -0.08333333  0.41666667

y  0.58333333 -0.41666667  0.08333333

z -0.33333333  0.66666667 -0.33333333


> 
> 
> t <- makeCacheMatrix(m)


> cacheSolve(t)

         [,1]        [,2]        [,3]
         
x -0.08333333 -0.08333333  0.41666667

y  0.58333333 -0.41666667  0.08333333

z -0.33333333  0.66666667 -0.33333333




> cacheSolve(t)

getting cached data

         [,1]        [,2]        [,3]
         
x -0.08333333 -0.08333333  0.41666667

y  0.58333333 -0.41666667  0.08333333

z -0.33333333  0.66666667 -0.33333333
