import Foundation


var result = Array<Int>()
var result2 = Array<String>()

public func swap(i: Int, j:Int) -> Int {
    var temp = 0
    if(i==j) {
        return 0
    }
    temp = result[i]
    result[i] = result[j]
    result[j] = temp
    return 0
}

public func Solve(number: Int, n: Int) -> Int {
    if n == 1 {
        var k = ""
        for i in 0...number-1{
            if i == number-1 {
                k = k + String(result[i])

            }else{
                k = k + String(result[i]) + " "

            }
            
        }
        result2.append(k)
        return 0
    }
    
    for i in 0...n-1{
        swap(i: i, j: n-1)
        Solve(number: number, n: n-1)
        swap(i: i, j: n-1)
    }
    return 0;
}


let number = Int(readLine()!)!

for i in 1...number{
    result.append(i)
}
Solve(number: number, n: number);
result2 = result2.sorted()
for i in 0...result2.count-1{
    print(result2[i])
}

