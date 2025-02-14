// Event.swift
import Foundation


struct Event: Codable, Hashable {
    let name: String
    var date: String
    let location: String
    let time: String
}


func loadJSON() -> [Event] {
    var event: [Event] = []
    guard let url = Bundle.main.url(forResource: "events", withExtension: "json") else {
        print("No file exists.")
        return event
    }

    do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        event = try decoder.decode([Event].self, from: data)
    } catch {
        print("Error decoding JSON: \(error)")
    }
    return event
}


func groupEventsByMonthYear(events: [Event]) -> [String: [Event]] {
    var groupedEvents = [String: [Event]]()
    events.forEach { event in
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        if let date = dateFormatter.date(from: event.date) {
            dateFormatter.dateFormat = "MMMM yyyy"
            let monthYear = dateFormatter.string(from: date)
            groupedEvents[monthYear, default: []].append(event)
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


func getDay(from dateString: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    if let date = dateFormatter.date(from: dateString) {
        dateFormatter.dateFormat = "dd"
        return dateFormatter.string(from: date)
    }
    return "Invalid"
}


func getWeek(from dateString: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    
    if let week = dateFormatter.date(from: dateString) {
        dateFormatter.dateFormat = "EEE"
        return dateFormatter.string(from: week)
    }
    return "Invalid"
}

func getWeekDay(from dateString: String)-> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    
    if let weeDay = dateFormatter.date(from: dateString)
    {
        dateFormatter.dateFormat = "EEEE, dd MMMM YYYY"
        return dateFormatter.string(from: weeDay)
    }
    return "nil"
}
