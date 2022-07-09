//
//  statics.swift
//  hackaburg
//
//  Created by Shivam on 08/07/22.
//

import Foundation

let userId = 5
let today = "2022-07-08"

func currentDate()-> String{
    let date = Date()
    let df = DateFormatter()
    df.dateFormat = "yyyy-MM-dd"
    return df.string(from: date)
}

func tomorrowDate() -> String{
    var calendar = Calendar.current
    let today = Date()
    let midnight = calendar.startOfDay(for: today)
    let tomorrow = calendar.date(byAdding: .day, value: 1, to: midnight)!
    let df = DateFormatter()
    df.dateFormat = "yyyy-MM-dd"
    return df.string(from: tomorrow)
}
