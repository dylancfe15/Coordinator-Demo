//
//  MainCoordinator.swift
//  Coordinator Demo
//
//  Created by Difeng Chen on 4/26/22.
//

import UIKit

class MainCoordinator {

    var navigationController: UINavigationController?

    func start() {
        let homeViewController = HomeViewController()
        navigationController?.viewControllers = [homeViewController]
    }

    func pushUserProfileViewController(with user: String) {
        let userProfileViewController = UserProfileViewController()
        userProfileViewController.coodinator.configure(user)

        navigationController?.pushViewController(userProfileViewController, animated: true)
    }

    func popVieController() {
        navigationController?.popViewController(animated: true)
    }
}
