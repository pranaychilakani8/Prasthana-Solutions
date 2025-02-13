//
//  loadJson.swift
//  JSONUsingScrollView
//
//  Created by Pranay on 13/02/25.
//

import Foundation

struct Event : Codable,Hashable {
    let name : String
    let date : String
    let location : String
    let time : String
}



func loadJson()->[Event]{
  
    var events  : [Event] = []
    
    guard let url = Bundle.main.url(forResource: "events", withExtension: "json") else {
        print("Error to load file")
        return events
    }
    
    //check the data contents
    do{
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        events = try decoder.decode([Event].self,from: data)
    }
    catch{
        print("Error")
    }
    return events
}


func week(dateString : String)->String{
    let dateformatter = DateFormatter()
    dateformatter.dateFormat = "yyyy-MM-dd"
    
    if let weekName = dateformatter.date(from: dateString)
    {
        dateformatter.dateFormat = "EE"
        return dateformatter.string(from: weekName)
    }
    return "nil"
}

func getDay(dateString : String)->String{
    let dateformatter = DateFormatter()
    dateformatter.dateFormat = "yyyy-MM-dd"
    
    if let day = dateformatter.date(from: dateString)
    {
        dateformatter.dateFormat = "dd"
        return dateformatter.string(from: day)
    }
    return "nil"
}
func groupEventsByMonthYear(events: [Event]) -> [String: [Event]] {
    var groupedEvents = [String: [Event]]()
    events.forEach { event in
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        if let date = dateFormatter.date(from: event.date) {
            dateFormatter.dateFormat = "MMMM yyyy"
            let monthYear = dateFormatter.string(from: date)
            if groupedEvents[monthYear] == nil {
                groupedEvents[monthYear] = []
            }
            groupedEvents[monthYear]?.append(event)
        }
    }
    return groupedEvents
}


func sortMonthYearKeys(groupedEvents: [String: [Event]]) -> [String] {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MMMM yyyy"
    return groupedEvents.keys.sorted {
        dateFormatter.date(from: $0)! < dateFormatter.date(from: $1)!
    }
}

