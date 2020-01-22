//
//  DateFormattingService.swift
//  Woodside
//
//  Created by Parvin Sital on 22/01/2020.
//  Copyright © 2020 Parvin Sital. All rights reserved.
//

import Foundation

class DateFormattingService {
    private let startDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }()
    
    private let endDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter
    }()
}

extension DateFormattingService {
    func startDate(from date: Date) -> String {
        startDateFormatter.string(from: date)
    }
    
    func endDate(from date: Date) -> String {
        endDateFormatter.string(from: date)
    }
}
