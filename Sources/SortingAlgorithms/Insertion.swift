//
//  Insertion.swift
//
//  InsertionSort time complexity:
//  Best case = O(n)
//  Worst case = O(n^2)
//
//  Created by Henry Walsh on 6/7/23.
//

public struct Insertion {
    public static func sort<T: Comparable>(_ unsortedArray: [T]) -> [T] {
        var sortedArray: [T] = []
        
        for item in unsortedArray {
            // Array.count is O(1), so I'm not concerned about its performance impact.
            for i in 0...sortedArray.count {
                if (i == sortedArray.count) {
                    sortedArray.append(item)
                }
                else if (item <= sortedArray[i]) {
                    sortedArray.insert(item, at: i)
                    break
                }
            }
        }
        
        return sortedArray
    }
}
