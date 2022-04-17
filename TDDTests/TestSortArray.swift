//
//  TestSortArray.swift
//  TDDTests
//
//  Created by Igor Ashurkov on 18.02.2021.
//

import XCTest
@testable import TDD

class TestSortArray: XCTestCase {

    func testSortArrayByAscending() {
        // Given
        let workWithArray = ExampleWorkWithArray()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"
        formatter.timeZone = TimeZone(identifier: "UTC")
        
        let firstDate   = formatter.date(from: "25/08/2020 12:00")! as NSDate
        let secondDate  = formatter.date(from: "30/12/2020 15:30")! as NSDate
        let thirdDate   = formatter.date(from: "04/02/2021 10:00")! as NSDate
        let fourthDate  = formatter.date(from: "15/02/2021 11:15")! as NSDate
        
        let correctSortedArray = [firstDate, secondDate, thirdDate, fourthDate]
        let inCorrectSortedArray = [thirdDate, secondDate, firstDate, fourthDate]
        
        // When
        let resultSort = workWithArray.sortArray(array: inCorrectSortedArray,
                                                 sortBy: .ascending)

        print("[ Unit Test ] : Sorting the array in ascending order ...")
        print("[ Unit Test ] : Expected result      = \(correctSortedArray)")
        print("[ Unit Test ] : Array before sorting = \(inCorrectSortedArray)")
        print("[ Unit Test ] : Array after sorting  = \(resultSort)")
        print("[ Unit Test ]")
        
        // Then
        XCTAssertEqual(correctSortedArray, resultSort)
    }
    
    func testSortArrayByDescending() {
        // Given
        let workWithArray = ExampleWorkWithArray()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"
        formatter.timeZone = TimeZone(identifier: "UTC")
        
        let firstDate   = formatter.date(from: "23/09/2020 09:50")! as NSDate
        let secondDate  = formatter.date(from: "12/11/2020 19:20")! as NSDate
        let thirdDate   = formatter.date(from: "12/02/2021 14:00")! as NSDate
        let fourthDate  = formatter.date(from: "18/02/2021 12:35")! as NSDate
        
        let correctSortedArray = [fourthDate, thirdDate, secondDate, firstDate]
        let inCorrectSortedArray = [firstDate, fourthDate, secondDate, thirdDate]
        
        // When
        let resultSort = workWithArray.sortArray(array: inCorrectSortedArray,
                                                 sortBy: .descending)

        print("[ Unit Test ] : Sorting the array in descending order ...")
        print("[ Unit Test ] : Expected result      = \(correctSortedArray)")
        print("[ Unit Test ] : Array before sorting = \(inCorrectSortedArray)")
        print("[ Unit Test ] : Array after sorting  = \(resultSort)")
        print("[ Unit Test ]")
        
        // Then
        XCTAssertEqual(correctSortedArray, resultSort)
    }
}
