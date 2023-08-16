//
//  RickAndMortyCharacterTableViewCell.swift
//  app-4-api-request-demo
//
//  Created by Gabriel Cavalcante on 04/08/2023.
//

import UIKit

class RickAndMortyCharacterTableViewCell: UITableViewCell {
    static var reuseIdentifier: String = "RickAndMortyCharacterTableViewCell"

    private let profileImage = UIImageView()
    private let nameLabel = UILabel()
    private let statusLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configureView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with character: RickAndMortyCharacter) {
        profileImage.load(url: character.imageURL)
        nameLabel.text = character.name
        statusLabel.text = character.status
    }
}

// MARK: - UI Methods

extension RickAndMortyCharacterTableViewCell {
    func configureView() {
        self.contentView.addSubview(profileImage)
        self.contentView.addSubview(nameLabel)
        self.contentView.addSubview(statusLabel)

        profileImage.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            profileImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            profileImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            profileImage.heightAnchor.constraint(equalToConstant: 50),
            profileImage.widthAnchor.constraint(equalToConstant: 50),

            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            nameLabel.bottomAnchor.constraint(equalTo: statusLabel.topAnchor, constant: -20),

            statusLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 20),
            statusLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            statusLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ])
    }
}

extension UIImageView {
    func load(url: URL?) {
        guard let url = url else { return }

        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url),
               let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self?.image = image
                }
            }
        }
    }
}
