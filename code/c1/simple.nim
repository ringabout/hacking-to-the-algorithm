let data = [13, -3, -25, 20, -3, -16, -23, 18, 20, -7, 12, -5, -22, 15, -4, 7]

var maxElem = 0
for i in 0 ..< data.len:

  var value = 0
  for j in i ..< data.len:
    inc(value, data[j])
    if value > maxElem:
      maxElem = value

doAssert maxElem == 43