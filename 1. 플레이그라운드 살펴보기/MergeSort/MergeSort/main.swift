//
//  main.swift
//  MergeSort
//
//  Created by 이성노 on 2022/09/08.
//

import Foundation

func mergeSort(_ array: [Int]) -> [Int] {
    if array.count <= 1 { return array }
    let center = array.count / 2
    let left = Array(array[0..<center])
    let right = Array(array[center..<array.count])
    
    func merge(_ left: [Int],_ right: [Int]) -> [Int] {
        var left = left
        var right = right
        var result: [Int] = []
        
        while !left.isEmpty && !right.isEmpty {
            if left[0] < right[0] {
                result.append(left.removeFirst())
            } else {
                result.append(right.removeFirst())
            }
        }
        
        // 왼쪽 배열의 요소가 남은 경우
        if !left.isEmpty {
            result.append(contentsOf: left)
        }
        
        // 오른쪽 배열의 요소가 남은 경우
        if !right.isEmpty {
            result.append(contentsOf: right)
        }
        
        return result
    }
    
    return merge(mergeSort(left), mergeSort(right))
}
