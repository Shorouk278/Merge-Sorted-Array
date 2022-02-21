func generate(_ numRows: Int) -> [[Int]] {
    var mainArr : [[Int]] = []
        guard numRows > 0 else {
            return mainArr
        }
        for i in 0..<numRows{
            var row : [Int] = []
            if i == 1 {
                row = [1]
            } else if i == 2{
                row = [1,1]
            }else{
                for i in 0..<numRows{
                    var row : [Int] = []
                    for j in 0...i{
                        var value = 1
                        if (i>1 && j>0 && j<i){
                            value = mainArr[i-1][j-1] + mainArr[i-1][j]
                        }else{
                            value = 1
                        }
                        row.append(value)
                    }
                    mainArr.append(row)
                }
                return mainArr
            }
        }
    return mainArr

}

generate(5)

