//
//  SearchHeaderView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 26.04.23.
//

import UIKit


final class HeaderSearchView: UICollectionReusableView {

    static let identifier = "header"

    // MARK: - Outlets

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Search on categories"
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.textColor = .label
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: - Setup

    private func setupHierarchy() {
        addSubview(label)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
