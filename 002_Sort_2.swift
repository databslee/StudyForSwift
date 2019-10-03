import Foundation
let num = readLine()!
var a = Int(num)!
var n = Array<Int64>()
for _ in 1...a{
    let r = readLine()!
    n.append(Int64(r)!)
}

var k : Dictionary<Int64, Int64> = Dictionary<Int64, Int64>()
for i in 0...n.count-1{
    k.updateValue(0, forKey: n[i])
}
for i in 0...n.count-1{
    k.updateValue(k[n[i]]!+1, forKey: n[i])
}
var maxValue : Int64 = 0;
var maxResult : Int64 = 0;
var clock = 1;
for (key,value) in k{
    if clock == 1 {
        maxValue = value
        maxResult = key
        clock = 0;
    }else{
        if value > maxValue{
            maxValue = value
            maxResult = key
        }else if value == maxValue{
            if key < maxResult {
                maxValue = value
                maxResult = key
            }
        }
        
    }
}

print (maxResult)
