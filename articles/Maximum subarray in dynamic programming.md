# Maximum subarray in dynamic programming

Dynamic programming is a computer programming optimization method. Every new decision is based on previous efforts. So it is pretty efficient.

## Description

Given that an array with sixteen elements

```nim
let data = [13, -3, -25, 20, -3, -16, -23, 18, 20, -7, 12, -5, -22, 15, -4, 7]
```

![e1](../assets/1/e1.png)

## A dead simple solution

You need to find the consecutive elements with the max summation among the array. The dead simple method is to consider all subarrays. 

```nim
let data = [13, -3, -25, 20, -3, -16, -23, 18, 20, -7, 12, -5, -22, 15, -4, 7]

var maxElem = 0
for i in 0 ..< data.len:

  var value = 0
  for j in i ..< data.len:
    inc(value, data[j])
    if value > maxElem:
      maxElem = value

echo maxElem
```
However, this algorithm doesn't scale well. The time complexity of this algorithm is O(n ^ 2).

## Dynamic programming solution

Dynamic programming is the process of filling in the form. The current cell makes use of the result of previous cell. We use one-dimension form to solve this problem. When the form is filled, the problem is solved.

Let's look at the problem closely. It asks us to calculate the result of the maximum subarray. First we need a new array of the same length as the origin array. Now we begin to fill in the new array. The new array stores  the summation of the current maximum subarray. How to get the summation? The current summation is equal to the value in the origin array plus the previous summation of maximum subarray.

First we should initialize the new array with the first element in origin array. This is a start condition.

![e0](../assets/1/e0.png)

Then we can calculate the current cell from the start cell.

![e2](../assets/1/e2.png)

So maximum subarray is composed of the previous maximum subarray plus the current elements. But be careful. When an element in origin array is too small, it maybe become an obstacle for acquiring maximum subarray. Namely, if the previous maximum subarray plus the current value in the origin array is less than 0. This means that the current maximum subarray can't bring gains to the following maximum subarray. we should set this cell to 0.

![e3](../assets/1/e3.png)


