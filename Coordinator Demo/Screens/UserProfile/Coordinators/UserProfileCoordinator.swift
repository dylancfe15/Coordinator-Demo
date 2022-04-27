//
//  UserProfileCoordinator.swift
//  Coordinator Demo
//
//  Created by Difeng Chen on 4/26/22.
//

import UIKit

class UserProfileCoodinator {

    var mainCoordinator: MainCoordinator?
    private let viewCoodinator: UserProfileViewCoodinator
    private let networkCoordinator = UserProfileNetworkCoodinator()

    private(set) var user: String?

    init(view: UIView) {
        viewCoodinator = UserProfileViewCoodinator(view: view)
    }

    func configure() {
        viewCoodinator.configureView()
    }

    func configure(_ user: String) {
        self.user = user

        viewCoodinator.configureView(with: user)
    }

    func updateUser() {
        networkCoordinator.updateUser(newUser: "New User") {
            // MARK: - Do something
        }
    }
}
