import UIKit

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    var i = m - 1
    var j = n - 1
    var idx  = m + n - 1
    
    if m == 0 {
        nums1  = nums2
        return
    }
    
    while ( i >= 0 && j >= 0){
        if nums1[i] >= nums2[j]{
            nums1[idx] = nums1[i]
            i -= 1
        }else{
            nums1[idx] = nums2[j]
            j -= 1
        }
        idx -= 1
    }
    
    while (i >= 0){
        nums1[idx] = nums1[i]
        i -= 1
        idx -= 1
    }
    
    while (j >= 0){
        nums1[idx] = nums2[j]
        j -= 1
        idx -= 1
    }
    
    return
    
}
