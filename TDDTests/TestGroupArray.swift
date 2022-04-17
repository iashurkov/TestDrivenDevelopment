//
//  TestGroupArray.swift
//  TDDTests
//
//  Created by Igor Ashurkov on 18.02.2021.
//

import XCTest
@testable import TDD

class TestGroupArray: XCTestCase {
    
    func testGroupArrayByDayAscending() {
        // Given
        let workWithArray = ExampleWorkWithArray()

        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"
        formatter.timeZone = TimeZone(identifier: "UTC")

        let firstDate   = formatter.date(from: "23/09/2020 11:30")! as NSDate
        let secondDate  = formatter.date(from: "12/11/2020 14:15")! as NSDate
        let thirdDate   = formatter.date(from: "12/02/2021 08:00")! as NSDate
        let fourthDate  = formatter.date(from: "18/02/2021 13:20")! as NSDate

        let correctGroupArray = [
            "12" : [secondDate, thirdDate],
            "18" : [fourthDate],
            "23" : [firstDate]
        ]
        let inCorrectArray = [fourthDate, firstDate, thirdDate, secondDate]

        // When
        let resultGroup = workWithArray.groupArray(array: inCorrectArray,
                                                   groupBy: .day,
                                                   sortBy: .ascending)
        
        print("[ Unit Test ] : Grouping an array by day and ascending ...")
        print("[ Unit Test ] : Expected result   = \(correctGroupArray)")
        print("[ Unit Test ] : Array before grouping    = \(inCorrectArray)")
        print("[ Unit Test ] : Array after grouping = \(resultGroup)")
        print("[ Unit Test ]")

        // Then
        XCTAssertEqual(correctGroupArray, resultGroup)
    }
    
    func testGroupArrayByDayDescending() {
        // Given
        let workWithArray = ExampleWorkWithArray()

        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"
        formatter.timeZone = TimeZone(identifier: "UTC")

        let firstDate   = formatter.date(from: "23/09/2020 11:30")! as NSDate
        let secondDate  = formatter.date(from: "12/11/2020 14:15")! as NSDate
        let thirdDate   = formatter.date(from: "12/02/2021 08:00")! as NSDate
        let fourthDate  = formatter.date(from: "18/02/2021 13:20")! as NSDate

        let correctGroupArray = [
            "12" : [thirdDate, secondDate],
            "18" : [fourthDate],
            "23" : [firstDate]
        ]
        let inCorrectArray = [fourthDate, firstDate, thirdDate, secondDate]

        // When
        let resultGroup = workWithArray.groupArray(array: inCorrectArray,
                                                   groupBy: .day,
                                                   sortBy: .descending)
        
        print("[ Unit Test ] : Grouping the array by day and descending ...")
        print("[ Unit Test ] : Expected result   = \(correctGroupArray)")
        print("[ Unit Test ] : Array before grouping    = \(inCorrectArray)")
        print("[ Unit Test ] : Array after grouping = \(resultGroup)")
        print("[ Unit Test ]")

        // Then
        XCTAssertEqual(correctGroupArray, resultGroup)
    }
    
    func testGroupArrayByMonthAscending() {
        // Given
        let workWithArray = ExampleWorkWithArray()

        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"
        formatter.timeZone = TimeZone(identifier: "UTC")

        let firstDate   = formatter.date(from: "23/09/2020 11:30")! as NSDate
        let secondDate  = formatter.date(from: "12/11/2020 14:15")! as NSDate
        let thirdDate   = formatter.date(from: "12/02/2021 08:00")! as NSDate
        let fourthDate  = formatter.date(from: "18/02/2021 13:20")! as NSDate

        let correctGroupArray = [
            "2" : [thirdDate, fourthDate],
            "9" : [firstDate],
            "11" : [secondDate]
        ]
        let inCorrectArray = [fourthDate, firstDate, thirdDate, secondDate]

        // When
        let resultGroup = workWithArray.groupArray(array: inCorrectArray,
                                                   groupBy: .month,
                                                   sortBy: .ascending)
        
        print("[ Unit Test ] : Grouping the array by month and ascending ...")
        print("[ Unit Test ] : Expected result   = \(correctGroupArray)")
        print("[ Unit Test ] : Array before grouping    = \(inCorrectArray)")
        print("[ Unit Test ] : Array after grouping = \(resultGroup)")
        print("[ Unit Test ]")

        // Then
        XCTAssertEqual(correctGroupArray, resultGroup)
    }
    
    func testGroupArrayByMonthDescending() {
        // Given
        let workWithArray = ExampleWorkWithArray()

        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"
        formatter.timeZone = TimeZone(identifier: "UTC")

        let firstDate   = formatter.date(from: "23/09/2020 11:30")! as NSDate
        let secondDate  = formatter.date(from: "12/11/2020 14:15")! as NSDate
        let thirdDate   = formatter.date(from: "12/02/2021 08:00")! as NSDate
        let fourthDate  = formatter.date(from: "18/02/2021 13:20")! as NSDate

        let correctGroupArray = [
            "11" : [secondDate],
            "9" : [firstDate],
            "2" : [fourthDate, thirdDate]
        ]
        let inCorrectArray = [fourthDate, firstDate, thirdDate, secondDate]

        // When
        let resultGroup = workWithArray.groupArray(array: inCorrectArray,
                                                   groupBy: .month,
                                                   sortBy: .descending)
        
        print("[ Unit Test ] : Grouping the array by month and descending ...")
        print("[ Unit Test ] : Expected result   = \(correctGroupArray)")
        print("[ Unit Test ] : Array before grouping    = \(inCorrectArray)")
        print("[ Unit Test ] : Array after grouping = \(resultGroup)")
        print("[ Unit Test ]")

        // Then
        XCTAssertEqual(correctGroupArray, resultGroup)
    }
    
    func testGroupArrayByYearAscending() {
        // Given
        let workWithArray = ExampleWorkWithArray()

        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"
        formatter.timeZone = TimeZone(identifier: "UTC")

        let firstDate   = formatter.date(from: "23/09/2020 11:30")! as NSDate
        let secondDate  = formatter.date(from: "12/11/2020 14:15")! as NSDate
        let thirdDate   = formatter.date(from: "12/02/2021 08:00")! as NSDate
        let fourthDate  = formatter.date(from: "18/02/2021 13:20")! as NSDate

        let correctGroupArray = [
            "2020" : [firstDate, secondDate],
            "2021" : [thirdDate, fourthDate]
        ]
        let inCorrectArray = [fourthDate, firstDate, thirdDate, secondDate]

        // When
        let resultGroup = workWithArray.groupArray(array: inCorrectArray,
                                                   groupBy: .year,
                                                   sortBy: .ascending)
        
        print("[ Unit Test ] : Grouping an array by year and ascending ...")
        print("[ Unit Test ] : Expected result   = \(correctGroupArray)")
        print("[ Unit Test ] : Array before grouping    = \(inCorrectArray)")
        print("[ Unit Test ] : Array after grouping = \(resultGroup)")
        print("[ Unit Test ]")

        // Then
        XCTAssertEqual(correctGroupArray, resultGroup)
    }
    
    func testGroupArrayByYearDescending() {
        // Given
        let workWithArray = ExampleWorkWithArray()

        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"
        formatter.timeZone = TimeZone(identifier: "UTC")

        let firstDate   = formatter.date(from: "23/09/2020 11:30")! as NSDate
        let secondDate  = formatter.date(from: "12/11/2020 14:15")! as NSDate
        let thirdDate   = formatter.date(from: "12/02/2021 08:00")! as NSDate
        let fourthDate  = formatter.date(from: "18/02/2021 13:20")! as NSDate

        let correctGroupArray = [
            "2021" : [fourthDate, thirdDate],
            "2020" : [secondDate, firstDate]
        ]
        let inCorrectArray = [fourthDate, firstDate, thirdDate, secondDate]

        // When
        let resultGroup = workWithArray.groupArray(array: inCorrectArray,
                                                   groupBy: .year,
                                                   sortBy: .descending)
        
        print("[ Unit Test ] : Grouping the array by year and descending ...")
        print("[ Unit Test ] : Expected result   = \(correctGroupArray)")
        print("[ Unit Test ] : Array before grouping    = \(inCorrectArray)")
        print("[ Unit Test ] : Array after grouping = \(resultGroup)")
        print("[ Unit Test ]")

        // Then
        XCTAssertEqual(correctGroupArray, resultGroup)
    }
}
