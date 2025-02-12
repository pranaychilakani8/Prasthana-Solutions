import UIKit

class MonthsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var events: [Event] = []
    var groupedEvents = [String: [Event]]()
    var sortedKeys: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        loadEventsFromJSON()
        groupEventsByMonthYear()
        sortMonthYearKeys()
        
        self.navigationItem.backButtonTitle = "Back"

        let tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        
        title = "Events Schedule"
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    func loadEventsFromJSON() {
        guard let path = Bundle.main.path(forResource: "events", ofType: "json") else {
            print("events.json file not found")
            return
        }

        let url = URL(fileURLWithPath: path)
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            events = try decoder.decode([Event].self, from: data)
        } catch {
            print("Error loading or parsing events.json: \(error)")
        }
    }

    func groupEventsByMonthYear() {
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
    }

    func sortMonthYearKeys() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM yyyy"
        sortedKeys = groupedEvents.keys.sorted { dateFormatter.date(from: $0)! < dateFormatter.date(from: $1)! }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return sortedKeys.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sortedKeys[section]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let monthYear = sortedKeys[section]
        return groupedEvents[monthYear]!.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let monthYear = sortedKeys[indexPath.section]
        
        if let event = groupedEvents[monthYear]?[indexPath.row] {
            cell.textLabel?.text = event.name
            cell.detailTextLabel?.text = event.date
        }
        cell.accessoryType = .disclosureIndicator
        cell.selectionStyle = .none
        cell.backgroundColor = .white
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let monthYear = sortedKeys[section]
        let headerLabel = UILabel()
        headerLabel.text = monthYear
        headerLabel.textAlignment = .center
        headerLabel.font = .boldSystemFont(ofSize: 18)
        headerLabel.backgroundColor = UIColor(red: 0.85, green: 0.85, blue: 0, alpha: 0.85)
        headerLabel.textColor = .black
        
        return headerLabel
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let monthYear = sortedKeys[indexPath.section]
        guard let event = groupedEvents[monthYear]?[indexPath.row] else {
            return
        }
        let eventDetailsVC = EventDetailsViewController()
        eventDetailsVC.event = event
        navigationController?.pushViewController(eventDetailsVC, animated: true)
    }

}
