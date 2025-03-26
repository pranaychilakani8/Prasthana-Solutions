//
//  ChatRoomViewController.swift
//  ChatRoomTask
//
//  Created by Pranay on 19/03/25.
//

//import UIKit
//
//
//class ChatRoomViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    
//    let tableView = UITableView()
//    var textMessages: [LatestTextMessage1] = []
//    var textRoomId: Int
//    var token: String
//    let userPhoneNumber = "2025056789"
//
//
//    // Text Field & Button
//    let messageTextField: UITextField = {
//        let textField = UITextField()
//        textField.placeholder = "Type a message..."
//        textField.borderStyle = .roundedRect
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        return textField
//    }()
//
//    let sendButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Send", for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//    
//    init(textRoomId: Int, token: String) {
//        self.textRoomId = textRoomId
//        self.token = token
//        super.init(nibName: nil, bundle: nil)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//        title = "Chat Room"
//
//        setupTableView()
//        setupInputField()
//        fetchMessages()
//    }
//  
//
//    private func setupTableView() {
//        tableView.frame = view.bounds
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.separatorStyle = .none
//        tableView.register(ChatMessageCell.self, forCellReuseIdentifier: "ChatMessageCell")
//        view.addSubview(tableView)
//        
//        // Adjust tableView bottom for input field
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            tableView.topAnchor.constraint(equalTo: view.topAnchor),
//            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)
//        ])
//    }
//
//    private func setupInputField() {
//        let inputContainerView = UIView()
//        inputContainerView.backgroundColor = .white
//        inputContainerView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(inputContainerView)
//        
//        // Add text field & button
//        inputContainerView.addSubview(messageTextField)
//        inputContainerView.addSubview(sendButton)
//        
//        // Constraints
//        NSLayoutConstraint.activate([
//            inputContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            inputContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            inputContainerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            inputContainerView.heightAnchor.constraint(equalToConstant: 50),
//            
//            messageTextField.leadingAnchor.constraint(equalTo: inputContainerView.leadingAnchor, constant: 10),
//            messageTextField.centerYAnchor.constraint(equalTo: inputContainerView.centerYAnchor),
//            messageTextField.trailingAnchor.constraint(equalTo: sendButton.leadingAnchor, constant: -10),
//            messageTextField.heightAnchor.constraint(equalToConstant: 36),
//            
//            sendButton.trailingAnchor.constraint(equalTo: inputContainerView.trailingAnchor, constant: -10),
//            sendButton.centerYAnchor.constraint(equalTo: inputContainerView.centerYAnchor),
//            sendButton.widthAnchor.constraint(equalToConstant: 60)
//        ])
//    }
//
////    private func fetchMessages() {
////        NetworkManager.shared.getMessages(textRoomId: textRoomId, token: token) { [weak self] result in
////            switch result {
////            case .success(let messages):
////                DispatchQueue.main.async {
////                    self?.textMessages = messages
////                    self?.tableView.reloadData()
////                }
////            case .failure(let error):
////                print("Error fetching messages: \(error)")
////            }
////        }
////    }
//    
//    private func fetchMessages() {
//        NetworkManager.shared.getMessages(textRoomId: textRoomId, token: token) { [weak self] result in
//            switch result {
//            case .success(let messages):
//                DispatchQueue.main.async {
//                    // Sort messages by createdAt timestamp (oldest first)
//                    self?.textMessages = messages.sorted { $0.createdAt < $1.createdAt }
//                    self?.tableView.reloadData()
//                    
//                    // Scroll to the last message
//                    if let count = self?.textMessages.count, count > 0 {
//                        let lastIndex = IndexPath(row: count - 1, section: 0)
//                        self?.tableView.scrollToRow(at: lastIndex, at: .bottom, animated: true)
//                    }
//                }
//            case .failure(let error):
//                print("Error fetching messages: \(error)")
//            }
//        }
//    }
//
//
//    // MARK: - TableView DataSource
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return textMessages.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatMessageCell", for: indexPath) as! ChatMessageCell
//        let message = textMessages[indexPath.row]
//        cell.configure(with: message, userPhoneNumber: userPhoneNumber)
//        return cell
//    }
//
//    // Adjust row height based on message size
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
//}


import UIKit

class ChatRoomViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tableView = UITableView()
    var textMessages: [LatestTextMessage1] = []
    var textRoomId: Int
    var token: String
    let userPhoneNumber = "2025056789"

    // Text Field & Button
    let messageTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Type a message..."
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    let sendButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Send", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    init(textRoomId: Int, token: String) {
        self.textRoomId = textRoomId
        self.token = token
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Chat Room"

        setupTableView()
        setupInputField()
        fetchMessages()
    }
  
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(ChatMessageCell.self, forCellReuseIdentifier: "ChatMessageCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)
        ])
    }

    private func setupInputField() {
        let inputContainerView = UIView()
        inputContainerView.backgroundColor = .white
        inputContainerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(inputContainerView)
        
        inputContainerView.addSubview(messageTextField)
        inputContainerView.addSubview(sendButton)
        
        NSLayoutConstraint.activate([
            inputContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            inputContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            inputContainerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            inputContainerView.heightAnchor.constraint(equalToConstant: 50),
            
            messageTextField.leadingAnchor.constraint(equalTo: inputContainerView.leadingAnchor, constant: 10),
            messageTextField.centerYAnchor.constraint(equalTo: inputContainerView.centerYAnchor),
            messageTextField.trailingAnchor.constraint(equalTo: sendButton.leadingAnchor, constant: -10),
            messageTextField.heightAnchor.constraint(equalToConstant: 36),
            
            sendButton.trailingAnchor.constraint(equalTo: inputContainerView.trailingAnchor, constant: -10),
            sendButton.centerYAnchor.constraint(equalTo: inputContainerView.centerYAnchor),
            sendButton.widthAnchor.constraint(equalToConstant: 60)
        ])
    }

    private func fetchMessages() {
        NetworkManager.shared.getToken(mobileNumber: "2025056789", authCode: "123456") { [weak self] result in
            switch result {
            case .success(let token):
                NetworkManager.shared.getMessages(textRoomId: self?.textRoomId ?? 0, token: token) { [weak self] result in
                    switch result {
                    case .success(let messages):
                        DispatchQueue.main.async {
                            // Sort messages by createdAt timestamp (oldest first)
                            self?.textMessages = messages.sorted { $0.createdAt < $1.createdAt }
                            self?.tableView.reloadData()
                            self?.scrollToLastMessage()
                        }
                    case .failure(let error):
                        print("Error fetching messages: \(error)")
                    }
                }
            case .failure(let error):
                print("Error fetching token: \(error)")
            }
        }
    }

    private func scrollToLastMessage() {
        if !textMessages.isEmpty {
            let lastIndex = IndexPath(row: textMessages.count - 1, section: 0)
            tableView.scrollToRow(at: lastIndex, at: .bottom, animated: true)
        }
    }

    // MARK: - TableView DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textMessages.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatMessageCell", for: indexPath) as! ChatMessageCell
        let message = textMessages[indexPath.row]
        
        // Configure the cell without timestamp
        cell.configure(with: message, userPhoneNumber: userPhoneNumber)
        
        return cell
    }

    // Adjust row height based on message size
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
