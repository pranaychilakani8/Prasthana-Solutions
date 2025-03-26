//
//  ChatMessageCell.swift
//  ChatRoomTask
//
//  Created by Pranay on 19/03/25.
//

//import UIKit
//
//class ChatMessageCell: UITableViewCell {
//    
//    let bubbleBackgroundView = UIView()
//    let messageLabel = UILabel()
//    let mediaImageView = UIImageView()
//    let stackView = UIStackView() // New stack view
//    
//    var isSender: Bool = false {
//        didSet {
//            bubbleBackgroundView.backgroundColor = isSender ? UIColor.systemBlue : UIColor.lightGray
//            messageLabel.textColor = isSender ? .white : .black
//            setupConstraints()
//        }
//    }
//    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        
//        // Setup UI elements
//        bubbleBackgroundView.layer.cornerRadius = 12
//        bubbleBackgroundView.clipsToBounds = true
//        
//        messageLabel.numberOfLines = 0
//        messageLabel.font = UIFont.systemFont(ofSize: 16)
//        
//        mediaImageView.contentMode = .scaleAspectFill
//        mediaImageView.clipsToBounds = true
//        mediaImageView.layer.cornerRadius = 8
//        mediaImageView.isHidden = true // Default hidden until an image is loaded
//        
//        stackView.axis = .vertical
//        stackView.spacing = 8
//        stackView.alignment = .leading
//        stackView.distribution = .fill
//        
//        contentView.addSubview(bubbleBackgroundView)
//        bubbleBackgroundView.addSubview(stackView)
//        stackView.addArrangedSubview(messageLabel)
//        stackView.addArrangedSubview(mediaImageView)
//        
//        bubbleBackgroundView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        messageLabel.translatesAutoresizingMaskIntoConstraints = false
//        mediaImageView.translatesAutoresizingMaskIntoConstraints = false
//        
//        setupConstraints()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func configure(with message: LatestTextMessage1, userPhoneNumber: String) {
//        messageLabel.text = message.message ?? ""
//        
//        if let mediaURLString = message.mediaFileAttachmentURL, let mediaURL = URL(string: mediaURLString) {
//            loadImage(from: mediaURL)
//            mediaImageView.isHidden = false
//        } else {
//            mediaImageView.isHidden = true
//        }
//
//        isSender = (message.fromNumber == userPhoneNumber)
//    }
//    
//    private func setupConstraints() {
//        NSLayoutConstraint.deactivate(bubbleBackgroundView.constraints)
//
//        NSLayoutConstraint.activate([
//            // Bubble Background View Constraints
//            bubbleBackgroundView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
//            bubbleBackgroundView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
//            bubbleBackgroundView.widthAnchor.constraint(lessThanOrEqualToConstant: 250),
//            
//            // Position based on sender status
//            isSender
//                ? bubbleBackgroundView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
//                : bubbleBackgroundView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//
//            // StackView Constraints (Auto-adjusts based on content)
//            stackView.topAnchor.constraint(equalTo: bubbleBackgroundView.topAnchor, constant: 8),
//            stackView.leadingAnchor.constraint(equalTo: bubbleBackgroundView.leadingAnchor, constant: 10),
//            stackView.trailingAnchor.constraint(equalTo: bubbleBackgroundView.trailingAnchor, constant: -10),
//            stackView.bottomAnchor.constraint(equalTo: bubbleBackgroundView.bottomAnchor, constant: -8),
//            
//            // Image View Constraints
//            mediaImageView.widthAnchor.constraint(equalToConstant: 200),
//            mediaImageView.heightAnchor.constraint(equalToConstant: 200)
//        ])
//    }
//
//    private func loadImage(from url: URL) {
//        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
//            guard let self = self else { return }
//            if let data = data, error == nil {
//                DispatchQueue.main.async {
//                    self.mediaImageView.image = UIImage(data: data)
//                    self.mediaImageView.isHidden = false
//                }
//            }
//        }.resume()
//    }
//}

//import UIKit
//import SDWebImage // Import the library
//
//class ChatMessageCell: UITableViewCell {
//    
//    let bubbleBackgroundView = UIView()
//    let messageLabel = UILabel()
//    let mediaImageView = UIImageView()
//    let stackView = UIStackView()
//    
//    var isSender: Bool = false {
//        didSet {
//            bubbleBackgroundView.backgroundColor = isSender ? UIColor.systemBlue : UIColor.lightGray
//            messageLabel.textColor = isSender ? .white : .black
//            setupConstraints()
//        }
//    }
//    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        
//        bubbleBackgroundView.layer.cornerRadius = 12
//        bubbleBackgroundView.clipsToBounds = true
//        
//        messageLabel.numberOfLines = 0
//        messageLabel.font = UIFont.systemFont(ofSize: 16)
//        
//        mediaImageView.contentMode = .scaleAspectFill
//        mediaImageView.clipsToBounds = true
//        mediaImageView.layer.cornerRadius = 8
//        mediaImageView.isHidden = true
//        
//        stackView.axis = .vertical
//        stackView.spacing = 8
//        stackView.alignment = .leading
//        stackView.distribution = .fill
//        
//        contentView.addSubview(bubbleBackgroundView)
//        bubbleBackgroundView.addSubview(stackView)
//        stackView.addArrangedSubview(messageLabel)
//        stackView.addArrangedSubview(mediaImageView)
//        
//        bubbleBackgroundView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        messageLabel.translatesAutoresizingMaskIntoConstraints = false
//        mediaImageView.translatesAutoresizingMaskIntoConstraints = false
//        
//        setupConstraints()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func configure(with message: LatestTextMessage1, userPhoneNumber: String) {
//        messageLabel.text = message.message ?? ""
//        
//        if let mediaURLString = message.mediaFileAttachmentURL, let mediaURL = URL(string: mediaURLString) {
//            mediaImageView.sd_setImage(with: mediaURL, placeholderImage: UIImage(named: "placeholder"))
//            mediaImageView.isHidden = false
//        } else {
//            mediaImageView.isHidden = true
//        }
//
//        isSender = (message.fromNumber == userPhoneNumber)
//    }
//    
//    private func setupConstraints() {
//        NSLayoutConstraint.deactivate(bubbleBackgroundView.constraints)
//
//        NSLayoutConstraint.activate([
//            bubbleBackgroundView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
//            bubbleBackgroundView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
//            bubbleBackgroundView.widthAnchor.constraint(lessThanOrEqualToConstant: 250),
//            
//            isSender
//                ? bubbleBackgroundView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
//                : bubbleBackgroundView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//
//            stackView.topAnchor.constraint(equalTo: bubbleBackgroundView.topAnchor, constant: 8),
//            stackView.leadingAnchor.constraint(equalTo: bubbleBackgroundView.leadingAnchor, constant: 10),
//            stackView.trailingAnchor.constraint(equalTo: bubbleBackgroundView.trailingAnchor, constant: -10),
//            stackView.bottomAnchor.constraint(equalTo: bubbleBackgroundView.bottomAnchor, constant: -8),
//            
//            mediaImageView.widthAnchor.constraint(equalToConstant: 200),
//            mediaImageView.heightAnchor.constraint(equalToConstant: 200)
//        ])
//    }
//}

//import UIKit
//import SDWebImage
//
//class ChatMessageCell: UITableViewCell {
//    
//    let bubbleBackgroundView = UIView()
//    let messageLabel = UILabel()
//    let mediaImageView = UIImageView()
//    let stackView = UIStackView()
//    
//    var isSender: Bool = false {
//        didSet {
//            bubbleBackgroundView.backgroundColor = isSender ? UIColor.systemBlue : UIColor.systemPurple.withAlphaComponent(0.2)
//            messageLabel.textColor = isSender ? .white : .black
//            setupConstraints()
//        }
//    }
//    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        
//        bubbleBackgroundView.layer.cornerRadius = 12
//        bubbleBackgroundView.clipsToBounds = true
//        
//        messageLabel.numberOfLines = 0
//        messageLabel.font = UIFont.systemFont(ofSize: 16)
//        
//        mediaImageView.contentMode = .scaleAspectFill
//        mediaImageView.clipsToBounds = true
//        mediaImageView.layer.cornerRadius = 8
//        mediaImageView.isHidden = true
//        
//        stackView.axis = .vertical
//        stackView.spacing = 8
//        stackView.alignment = .leading
//        stackView.distribution = .fill
//        
//        contentView.addSubview(bubbleBackgroundView)
//        bubbleBackgroundView.addSubview(stackView)
//        stackView.addArrangedSubview(messageLabel)
//        stackView.addArrangedSubview(mediaImageView)
//        
//        bubbleBackgroundView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        messageLabel.translatesAutoresizingMaskIntoConstraints = false
//        mediaImageView.translatesAutoresizingMaskIntoConstraints = false
//        
//        setupConstraints()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func configure(with message: LatestTextMessage1, userPhoneNumber: String) {
//        messageLabel.text = message.message ?? ""
//        
//        if let mediaURLString = message.mediaFileAttachmentURL, let mediaURL = URL(string: mediaURLString) {
//            mediaImageView.sd_setImage(with: mediaURL, placeholderImage: UIImage(named: "placeholder"))
//            mediaImageView.isHidden = false
//        } else {
//            mediaImageView.isHidden = true
//        }
//
//        isSender = (message.fromNumber == userPhoneNumber)
//    }
//    
//    private func setupConstraints() {
//        NSLayoutConstraint.deactivate(bubbleBackgroundView.constraints)
//
//        NSLayoutConstraint.activate([
//            bubbleBackgroundView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
//            bubbleBackgroundView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
//            bubbleBackgroundView.widthAnchor.constraint(lessThanOrEqualToConstant: 250),
//            
//            isSender
//                ? bubbleBackgroundView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
//                : bubbleBackgroundView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//
//            stackView.topAnchor.constraint(equalTo: bubbleBackgroundView.topAnchor, constant: 8),
//            stackView.leadingAnchor.constraint(equalTo: bubbleBackgroundView.leadingAnchor, constant: 10),
//            stackView.trailingAnchor.constraint(equalTo: bubbleBackgroundView.trailingAnchor, constant: -10),
//            stackView.bottomAnchor.constraint(equalTo: bubbleBackgroundView.bottomAnchor, constant: -8),
//            
//            mediaImageView.widthAnchor.constraint(equalToConstant: 300),
//            mediaImageView.heightAnchor.constraint(equalToConstant: 200)
//        ])
//    }
//}


import UIKit
import SDWebImage

class ChatMessageCell: UITableViewCell {
    
    let bubbleBackgroundView = UIView()
    let messageLabel = UILabel()
    let mediaImageView = UIImageView()
    let stackView = UIStackView()
    
    var isSender: Bool = false {
        didSet {
            bubbleBackgroundView.backgroundColor = isSender ? UIColor.systemBlue.withAlphaComponent(0.2) : UIColor.systemPurple
            messageLabel.textColor = isSender ? .black : .white
            setupConstraints()
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        bubbleBackgroundView.layer.cornerRadius = 12
        bubbleBackgroundView.clipsToBounds = true
        
        messageLabel.numberOfLines = 0
        messageLabel.font = UIFont.systemFont(ofSize: 16)
        
        mediaImageView.contentMode = .scaleAspectFill
        mediaImageView.clipsToBounds = true
        mediaImageView.layer.cornerRadius = 8
        mediaImageView.isHidden = true
        
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.alignment = .leading
        stackView.distribution = .fill
        
        contentView.addSubview(bubbleBackgroundView)
        bubbleBackgroundView.addSubview(stackView)
        stackView.addArrangedSubview(messageLabel)
        stackView.addArrangedSubview(mediaImageView)
        
        bubbleBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        mediaImageView.translatesAutoresizingMaskIntoConstraints = false
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with message: LatestTextMessage1, userPhoneNumber: String) {
        messageLabel.text = message.message ?? ""

        if let mediaURLString = message.mediaFileAttachmentURL, let mediaURL = URL(string: mediaURLString) {
            mediaImageView.sd_setImage(with: mediaURL, placeholderImage: UIImage(named: "placeholder"))
            mediaImageView.isHidden = false
        } else {
            mediaImageView.isHidden = true
        }

        isSender = (message.fromNumber == userPhoneNumber)
    }

    private func setupConstraints() {
        NSLayoutConstraint.deactivate(bubbleBackgroundView.constraints)

        NSLayoutConstraint.activate([
            bubbleBackgroundView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            bubbleBackgroundView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            bubbleBackgroundView.widthAnchor.constraint(lessThanOrEqualToConstant: 250),
            
            // Receiver messages should be on the right, sender messages on the left
            isSender
                ? bubbleBackgroundView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16)
                : bubbleBackgroundView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),

            stackView.topAnchor.constraint(equalTo: bubbleBackgroundView.topAnchor, constant: 8),
            stackView.leadingAnchor.constraint(equalTo: bubbleBackgroundView.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: bubbleBackgroundView.trailingAnchor, constant: -10),
            stackView.bottomAnchor.constraint(equalTo: bubbleBackgroundView.bottomAnchor, constant: -8),
            
            mediaImageView.widthAnchor.constraint(equalToConstant: 300),
            mediaImageView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
}
