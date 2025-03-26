//
//  TextRoomCell.swift
//  ChatRoomTask
//
//  Created by Pranay on 19/03/25.
//

//import UIKit
//
//
//class TextRoomCell: UITableViewCell {
//    
//    let avatarLabel: UILabel = {
//        let label = UILabel()
//        label.textAlignment = .center
//        label.backgroundColor = .gray
//        label.textColor = .white
//        label.font = UIFont.boldSystemFont(ofSize: 18)
//        label.layer.cornerRadius = 20
//        label.clipsToBounds = true
//        return label
//    }()
//
//    let nameLabel: UILabel = {
//        let label = UILabel()
//        label.font = UIFont.boldSystemFont(ofSize: 16)
//        label.textColor = .black
//        return label
//    }()
//
//    let messageLabel: UILabel = {
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = .darkGray
//        label.numberOfLines = 2
//        return label
//    }()
//
//    let timeLabel: UILabel = {
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 12)
//        label.textColor = .lightGray
//        return label
//    }()
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        
//        // Add subviews
//        contentView.addSubview(avatarLabel)
//        contentView.addSubview(nameLabel)
//        contentView.addSubview(messageLabel)
//        contentView.addSubview(timeLabel)
//        
//        // Layout using AutoLayout
//        avatarLabel.translatesAutoresizingMaskIntoConstraints = false
//        nameLabel.translatesAutoresizingMaskIntoConstraints = false
//        messageLabel.translatesAutoresizingMaskIntoConstraints = false
//        timeLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            // Avatar (Left Circle)
//            avatarLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//            avatarLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
//            avatarLabel.widthAnchor.constraint(equalToConstant: 40),
//            avatarLabel.heightAnchor.constraint(equalToConstant: 40),
//
//            // Name Label
//            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
//            nameLabel.leadingAnchor.constraint(equalTo: avatarLabel.trailingAnchor, constant: 12),
//            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
//
//            // Message Label
//            messageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
//            messageLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
//            messageLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
//
//            // Time Label
//            timeLabel.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 4),
//            timeLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
//            timeLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
//            timeLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
//        ])
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    func configure(with textRoom: TextRoom) {
//        let firstName = textRoom.member.firstName
//        let lastName = textRoom.member.lastName
//
//        // Set initials in circle
//        let initials = "\(firstName.prefix(1))\(lastName.prefix(1))"
//        avatarLabel.text = initials.uppercased()
//
//        // Set name
//        nameLabel.text = firstName
//
//        // Set last message
//        messageLabel.text = textRoom.latestTextMessage?.message ?? "No recent messages"
//
//        // Format and set time
//        timeLabel.text = formatTime(textRoom.latestTextMessage?.createdAt)
//    }
//
//    private func formatTime(_ dateString: String?) -> String {
//        guard let dateString = dateString else { return "No time available" }
//        let inputFormatter = DateFormatter()
//        inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ" // Adjust if needed
//        if let date = inputFormatter.date(from: dateString) {
//            let outputFormatter = DateFormatter()
//            outputFormatter.dateFormat = "MMM d, h:mm a" // Example: Mar 19, 10:30 AM
//            return outputFormatter.string(from: date)
//        }
//        return "Invalid date"
//    }
//}

//-- working

import UIKit

class TextRoomCell: UITableViewCell {
    
    private let avatarView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        return view
    }()
    
    private let avatarLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .black
        return label
    }()

    private let messageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .darkGray
        label.numberOfLines = 1
        return label
    }()

    private let timeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .gray
        label.textAlignment = .left
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(avatarView)
        avatarView.addSubview(avatarLabel)
        contentView.addSubview(nameLabel)
        contentView.addSubview(messageLabel)
        contentView.addSubview(timeLabel)
        
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        avatarLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.translatesAutoresizingMaskIntoConstraints = false

        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with textRoom: TextRoom) {
        let firstName = textRoom.member.firstName
        let lastName = textRoom.member.lastName
        let initials = "\(firstName.prefix(1))\(lastName.prefix(1))"
        
        avatarLabel.text = initials.uppercased()
        nameLabel.text = firstName
        messageLabel.text = textRoom.latestTextMessage?.message ?? "No recent messages"
        timeLabel.text = formatTime(textRoom.latestTextMessage?.createdAt)

        applyGradientBackground()
    }

    private func formatTime(_ dateString: String?) -> String {
        guard let dateString = dateString else { return " " }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        
        if let date = formatter.date(from: dateString) {
            let now = Date()
            let componentsFormatter = DateComponentsFormatter()
            componentsFormatter.unitsStyle = .full
            componentsFormatter.maximumUnitCount = 1 
            componentsFormatter.allowedUnits = [.minute, .hour, .day, .weekOfMonth]

            if let timeString = componentsFormatter.string(from: date, to: now) {
                return "\(timeString) ago"
            }
        }
        
        return "Just now"
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            // Avatar (Left Side)
            avatarView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            avatarView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            avatarView.widthAnchor.constraint(equalToConstant: 40),
            avatarView.heightAnchor.constraint(equalToConstant: 40),

            // Avatar Label (Centered in Avatar View)
            avatarLabel.centerXAnchor.constraint(equalTo: avatarView.centerXAnchor),
            avatarLabel.centerYAnchor.constraint(equalTo: avatarView.centerYAnchor),

            // First Name (Above Message)
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            nameLabel.leadingAnchor.constraint(equalTo: avatarView.trailingAnchor, constant: 12),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),

            // Latest Message (Below Name)
            messageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            messageLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            messageLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),

            // Time (Below Latest Message)
            timeLabel.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 4),
            timeLabel.leadingAnchor.constraint(equalTo: messageLabel.leadingAnchor),
            timeLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            timeLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12)
        ])
    }

    private func applyGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = avatarView.bounds
        gradientLayer.colors = [
            UIColor.systemBlue.cgColor,
            UIColor.systemPurple.cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        avatarView.layer.insertSublayer(gradientLayer, at: 0)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        applyGradientBackground()
    }
}
