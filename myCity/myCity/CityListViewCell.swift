//
//  CityListViewCell.swift
//  myCity
//
//  Created by Brunya on 09.04.2021.
//

import UIKit

final class CityListViewCell: UITableViewCell {
    private let nameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 1
        $0.font = .preferredFont(forTextStyle: .body)
        $0.adjustsFontSizeToFitWidth = true
        $0.textColor = .label
        return $0
    }(UILabel(frame: .zero))
    
    func configure(name: String) {
        nameLabel.text = name
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CityListViewCell {
    private func setupConstraints() {
        contentView.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
