//
//  ExampleWorkWithArray.swift
//  TDD
//
//  Created by Igor Ashurkov on 18.02.2021.
//

import Foundation

enum sortArrayBy {
    case ascending
    case descending
}

enum groupArrayBy {
    case day
    case month
    case year
}

class ExampleWorkWithArray {

    private let calendar = Calendar.current
    
    func sortArray(array: [NSDate], sortBy: sortArrayBy) -> [NSDate] {
        var arrayForSort = array as [Date]
        
        sortBy == .ascending
            ? arrayForSort.sort(by: <)
            : arrayForSort.sort(by: >)
        
        return arrayForSort as [NSDate]
    }
    
    func groupArray(array: [NSDate], groupBy: groupArrayBy, sortBy: sortArrayBy) -> [String : [NSDate]] {
        var groupedArray: [String : [NSDate]] = [:]
        var cellGroupedArray = [NSDate]()
        
        let parsedArrayDate = self.parseArrayDate(array: array)
        var arrayGroupDate = [Int : [DateComponents]]()
        
        switch groupBy {
            case .day:
                arrayGroupDate = Dictionary(grouping: parsedArrayDate, by: { ($0.day ?? 0) })
            case .month:
                arrayGroupDate = Dictionary(grouping: parsedArrayDate, by: { ($0.month ?? 0) })
            case .year:
                arrayGroupDate = Dictionary(grouping: parsedArrayDate, by: { ($0.year ?? 0) })
        }
        
        arrayGroupDate.forEach {
            $0.value.forEach {
                cellGroupedArray.append(self.calendar.date(from: $0)! as NSDate)
            }
            
            let sortedCellArray = self.sortArray(array: cellGroupedArray, sortBy: sortBy)
            groupedArray["\($0.key)"] = sortedCellArray
            cellGroupedArray = []
        }
        
        return groupedArray
    }
    
    private func parseArrayDate(array: [NSDate]) -> [DateComponents] {
        var arrayDateComponents = [DateComponents]()
        
        array.forEach {
            let components = self.calendar.dateComponents([Calendar.Component.year,
                                                           Calendar.Component.month,
                                                           Calendar.Component.day,
                                                           Calendar.Component.hour,
                                                           Calendar.Component.minute],
                                                          from: $0 as Date)
            arrayDateComponents.append(components)
        }
        
        return arrayDateComponents
    }
}
