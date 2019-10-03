import Foundation
let num = readLine()!
var a = Int(num)!
var n = Array<Int>()
for i in 1...a{
    let r = readLine()!
    n.append(Int(r)!)
}
for i in 0...n.count-1{
    for j in 0...i{
        if n[i]<=n[j]{
            var swap = n[i]
            n[i]=n[j]
            n[j]=swap
        }
    }
}


for i in 0...n.count-1{
    print(n[i])
}
