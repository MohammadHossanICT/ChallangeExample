//
//  RoomsTableViewCell.swift
//  DirectoryApp
//
//  Created by  Mohammad on 04/08/22.
//

import UIKit

final class RoomsTableViewCell: UITableViewCell {
    private lazy var parentStackView: UIStackView = {
        return UIStackView.createStackView()
    }()
    lazy var idLabel: UILabel = {
        return UILabel.createLabel()
    }()
    lazy var occupiedLabel: UILabel = {
        return UILabel.createLabel()
    }()
    lazy var maxOccupancyLabel: UILabel = {
        return UILabel.createLabel()
    }()
    lazy var createdAtLabel: UILabel = {
        return UILabel.createLabel(text: NSLocalizedString("id", comment: ""))
    }()
    lazy var idLabelName: UILabel = {
        return UILabel.createLabel(text: NSLocalizedString("name", comment: ""))
    }()
    lazy var occupiedLabelName: UILabel = {
        return UILabel.createLabel(text: NSLocalizedString("occupied_status", comment: ""))
    }()
    lazy var maxOccupancyLabelName: UILabel = {
        return UILabel.createLabel(text: NSLocalizedString("max_occupancy", comment: ""))
    }()
    lazy var createdAtLabelName: UILabel = {
        return UILabel.createLabel(text: NSLocalizedString("created_at", comment: ""))
    }()
    private func createGroupStackView() -> UIStackView {
        return  UIStackView.createStackView(axis: .horizontal, alignment: .leading, distribution: .fillEqually)
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupUI() {
        self.contentView.addSubview(parentStackView)
        parentStackView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0.0).isActive = true
        parentStackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 0.0).isActive = true
        parentStackView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 0.0).isActive = true
        parentStackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 0.0).isActive = true
        [(idLabelName, idLabel), (maxOccupancyLabelName, maxOccupancyLabel), (occupiedLabelName, occupiedLabel), (createdAtLabelName, createdAtLabel)].forEach {  element in
            let stackView = createGroupStackView()
            stackView.addArrangedSubview(element.0)
            stackView.addArrangedSubview(element.1)
            parentStackView.addArrangedSubview(stackView)
        }
    }
    override func prepareForReuse() {
        idLabel.text = ""
        occupiedLabel.text = ""
        maxOccupancyLabel.text = ""
        createdAtLabel.text = ""
    }
    func configureData(room: Room) {
        idLabel.text = room.id
        occupiedLabel.text = room.occupiedMessage
        maxOccupancyLabel.text = "\(room.maxOccupancy)"
        createdAtLabel.text = room.createdAt
    }
}
