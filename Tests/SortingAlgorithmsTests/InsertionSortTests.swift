//
//  InsertionSortTests.swift
//  
//
//  Created by Henry Walsh on 6/7/23.
//

import SortingAlgorithms
import XCTest

final class InsertionSortTests: XCTestCase {

    func testIntValues() {
        let unsortedArray: [Int] = [3, 6, 8, 1, 0, -3, 56, 2, 2]
        let expected: [Int] = [-3, 0, 1, 2, 2, 3, 6, 8, 56]
        
        let actual = Insertion.sort(unsortedArray)
        
        assert(expected == actual)
    }

    func testStringValues() {
        let unsortedArray: [String] = ["a", "b", "c", "abba", "hello", "zzz", "12345"]
        let expected: [String] = ["12345", "a", "abba", "b", "c", "hello", "zzz"]
        
        let actual = Insertion.sort(unsortedArray);
        
        assert(expected == actual)
    }
    
    func testEmptyArray() {
        let emptyArray: [Date] = []
        
        let actual = Insertion.sort(emptyArray)
        
        assert(actual.count == 0)
    }
}
