//
//  SearchHeaderView.swift
//  AppleMusic SwiftUI
//
//  Created by Daniil Davidovich on 26.04.23.
//

import UIKit


final class SearchHeaderView: UICollectionReusableView {

    static let identifier = Constansts.indentifier

    // MARK: - Outlets

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = Constansts.textLabel
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

fileprivate enum Constansts {
    static let indentifier = "HeaderSearchView"
    static let textLabel = "Search on categories"
}
