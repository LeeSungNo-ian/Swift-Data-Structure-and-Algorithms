//
//  main.swift
//  InsertionSort
//
//  Created by 이성노 on 2022/09/08.
//

import Foundation

func insertionSort(alist: inout [Int]) {
    for i in 1 ..< alist.count {
        let tmp = alist[i]
        var j = i - 1
        while j >= 0 && alist[j] > tmp {
            alist[j+1] = alist[j]
            j = j - 1
        }
        alist[j+1] = tmp
    }
}

var listA: [Int] = [1,53,24,366,24,36,47,97,4,77,3131,432,25,32,124,3246,235,135,24357,645]
insertionSort(alist: &listA)

print(listA)
