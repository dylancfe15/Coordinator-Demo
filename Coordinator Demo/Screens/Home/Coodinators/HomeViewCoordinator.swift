//
//  HomeViewCoordinator.swift
//  Coordinator Demo
//
//  Created by Difeng Chen on 4/26/22.
//

import UIKit

class HomeViewCoordinator {

    private let view: UIView
    var coordinator: HomeCoordinator?

    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Home"
        return label
    }()

    init(view: UIView) {
        self.view = view
    }

    func configureView() {
        view.backgroundColor = .white

        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        let tap = UITapGestureRecognizer(target: self, action: #selector(tap))

        view.addGestureRecognizer(tap)
    }

    func update(with users: String) {
        // MARK: - Update the UI with user
    }

    @objc private func tap() {
        coordinator?.navigationToUserProfile()
    }
}
