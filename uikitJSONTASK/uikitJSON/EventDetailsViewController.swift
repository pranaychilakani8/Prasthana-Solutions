import UIKit

class EventDetailsViewController: UIViewController {

    var event: Event?
    
    var dateFormatter = DateFormatter()
    var date : String {
        var Datee : String = " "
        dateFormatter.dateFormat = "yyyy-MM-dd"
        if  let datee = dateFormatter.date(from: event!.date) {
            dateFormatter.dateFormat = "EEEE, d MMMM YYYY"
            Datee = dateFormatter.string(from: datee)
        }
        return Datee
    }
    
    
    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.backgroundColor = .white
        stack.spacing = 16
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.layoutMargins = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Event Details"
        view.backgroundColor = .systemGray

        guard let event = event else { return }
        let nameLabel = UILabel()
        nameLabel.text = "Event Name : \(event.name) \nEvent Location :\(event.location)"
        nameLabel.numberOfLines = 0
        nameLabel.textColor = .black
        nameLabel.textAlignment = .justified
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let namelabel1 = UILabel()
        namelabel1.text = date
        namelabel1.font = .boldSystemFont(ofSize: 18)
        
        let namelabel2 = UILabel()
        namelabel2.text = event.time
        namelabel2.font = .boldSystemFont(ofSize: 15)
        
        stackView.addArrangedSubview(namelabel1)
        stackView.addArrangedSubview(namelabel2)
        stackView.addArrangedSubview(nameLabel)

        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 360),
            stackView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}
