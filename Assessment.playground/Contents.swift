
import Foundation

// Defining the structure of the event that matches the JSON format
struct myEvent: Codable {
    let name: String
    let date: String
    let time: String
    let location: String
}

func loadFile() {
    guard let url = Bundle.main.url(forResource: "events", withExtension: "json") else {
        print("Error: no file exists.")
        return
    }

    do {
        // 2. Reading the file
        let data = try Data(contentsOf: url)

        // 3. Decode the data into an array of Event objects
        let decoder = JSONDecoder()
        let events = try decoder.decode([myEvent].self, from: data)

        // 4. Group events by the week number
        var groupedEvents = [Int: [myEvent]]()
        let calendar = Calendar.current

        // Loop through each event to get the week number and group them
        for event in events {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"

            if let eventDate = dateFormatter.date(from: event.date) {
                let weekNumber = calendar.component(.weekOfYear, from: eventDate)
                // Group events by week number
                if groupedEvents[weekNumber] == nil {
                    groupedEvents[weekNumber] = [event]
                } else {
                    groupedEvents[weekNumber]?.append(event)
                }
            }
        }

        // 5. Sort weeks in ascending order
        let sortedWeeks = groupedEvents.keys.sorted(by: <)

        // Print the events grouped by week and sorted by actual date
        for week in sortedWeeks {
            print("Week \(week):")
            
            // Sort the events within the week by their actual date
            let sortedEvents = groupedEvents[week]?.sorted { (event1, event2) -> Bool in
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "yyyy-MM-dd"
                
                // Compare the dates of the events
                if let date1 = dateFormatter.date(from: event1.date), let date2 = dateFormatter.date(from: event2.date) {
                    return date1 < date2
                }
                return false
            }

            for event in sortedEvents ?? [] {
                print("\t\(event.name) - \(event.date) - \(event.time) - \(event.location)")
            }
        }

    } catch {
        print("Error reading or decoding JSON.")
    }
}

loadFile()
