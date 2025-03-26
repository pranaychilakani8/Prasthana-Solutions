//
//  TextRoomsViewController.swift
//  ChatRoom
//
//  Created by Pranay on 21/03/25.
//

import UIKit

class TextRoomsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tableView = UITableView()
    var textRooms: [TextRoom] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Text Rooms"
        view.backgroundColor = .white

        setupTableView()
        setupToolbar()
        setupNavigationBar()

        fetchTextRooms() // Fetch only once
    }

    private func setupNavigationBar() {
        let messageButton = UIBarButtonItem(
            image: UIImage(systemName: "message"),
            style: .plain,
            target: self,
            action: #selector(messageButtonTapped)
        )
        messageButton.tintColor = .purple
        
        let editButton = UIBarButtonItem(
            image: UIImage(systemName: "pencil"),
            style: .plain,
            target: self,
            action: #selector(editButtonTapped)
        )
        editButton.tintColor = .purple
        navigationItem.rightBarButtonItems = [editButton, messageButton]
    }

    private func setupTableView() {
        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TextRoomCell.self, forCellReuseIdentifier: "TextRoomCell")
        view.addSubview(tableView)
    }

    private func fetchTextRooms() {
        NetworkManager.shared.getTextRooms { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let rooms):
                    self?.textRooms = rooms
                    self?.tableView.reloadData()
                case .failure(let error):
                    print("Error fetching text rooms: \(error)")
                }
            }
        }
    }

    // MARK: - TableView DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textRooms.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextRoomCell", for: indexPath) as! TextRoomCell
        let textRoom = textRooms[indexPath.row]
        cell.configure(with: textRoom)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let textRoom = textRooms[indexPath.row]

        guard let token = NetworkManager.shared.cachedToken else {
            print("Error: Token not found")
            return
        }

        let chatVC = ChatRoomViewController(textRoomId: textRoom.id)
        navigationController?.pushViewController(chatVC, animated: true)
    }

    @objc func messageButtonTapped() {
        // Navigation logic
    }

    @objc func editButtonTapped() {
        // Navigation logic
    }

    private func setupToolbar() {
        navigationController?.isToolbarHidden = false
        let button1 = UIBarButtonItem(image: UIImage(systemName: "house"), style: .plain, target: self, action: #selector(button1Tapped))
        let button2 = UIBarButtonItem(image: UIImage(systemName: "message.badge.filled.fill"), style: .plain, target: self, action: #selector(button2Tapped))
        let button3 = UIBarButtonItem(image: UIImage(systemName: "phone.fill"), style: .plain, target: self, action: #selector(button3Tapped))
        
        button1.tintColor = .black
        button2.tintColor = .black
        button3.tintColor = .black
        
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolbarItems = [spacer, button1, spacer, button2, spacer, button3, spacer]
    }

    @objc func button1Tapped() {}

    @objc func button2Tapped() {}

    @objc func button3Tapped() {}
}
