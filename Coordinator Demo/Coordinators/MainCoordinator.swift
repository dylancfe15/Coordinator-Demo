//
//  MainCoordinator.swift
//  Coordinator Demo
//
//  Created by Difeng Chen on 4/26/22.
//

import UIKit

class MainCoordinator {
    // MARK: - Alternately we can make this a singleton

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let homeViewController = HomeViewController()
        homeViewController.coordinator.mainCoordinator = self
        navigationController.pushViewController(homeViewController, animated: true)
    }

    func pushUserProfileViewController(with user: String) {
        let userProfileViewController = UserProfileViewController()
        userProfileViewController.coodinator.configure(user)
        userProfileViewController.coodinator.mainCoordinator = self

        navigationController.pushViewController(userProfileViewController, animated: true)
    }
}
