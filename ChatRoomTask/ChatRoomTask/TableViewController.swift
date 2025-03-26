//
//  TableViewController.swift
//  ChatRoomTask
//
//  Created by Pranay on 19/03/25.
//

import UIKit
import Moya

class TextRoomsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tableView = UITableView()
    var textRooms: [TextRoom] = []

    override func viewDidLoad() {
        self.title = "Text Rooms"
        
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableView()
        fetchTextRooms()
        setupToolbar()
        let messageButton = UIBarButtonItem(
            image: UIImage(systemName: "message"),
            style: .plain, target: self,
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
        tableView.register(TextRoomCell.self, forCellReuseIdentifier: "TextRoomCell") // Register custom cell
        view.addSubview(tableView)
    }

    private func fetchTextRooms() {
        NetworkManager.shared.getToken(mobileNumber: "2025056789", authCode: "123456") { [weak self] result in
            switch result {
            case .success(let token):
                NetworkManager.shared.getTextRooms(token: token) { result in
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
            case .failure(let error):
                print("Error fetching token: \(error)")
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
        
        // Use cached token instead of fetching new one
        NetworkManager.shared.getToken(mobileNumber: "2025056789", authCode: "123456") { [weak self] result in
            switch result {
            case .success(let token):
                let chatVC = ChatRoomViewController(textRoomId: textRoom.id, token: token)
                DispatchQueue.main.async {
                    self?.navigationController?.pushViewController(chatVC, animated: true)
                }
            case .failure(let error):
                print("Error fetching token: \(error)")
            }
        }
    }
    
    @objc func messageButtonTapped() {
//        let chatNavigation = ChatViewController()
//        navigationController?.pushViewController(chatNavigation, animated: true)
    }
    
    @objc func editButtonTapped() {
//        let editNavigation = EditViewController()
//        navigationController?.pushViewController(editNavigation, animated: true)
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
   
    @objc func button1Tapped() {
        
    }
    @objc func button2Tapped() {
        
    }
    @objc func button3Tapped() {
        
    }
}
