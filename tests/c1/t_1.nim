import ../../code/c1/dp


let data = [13, -3, -25, 20, -3, -16, -23, 18, 20, -7, 12, -5, -22, 15, -4, 7]
doAssert findMaxValue(data) == 43
doAssert findMaxSubarray(data) == (7, 10, 43)
