//
//  HomeCoodinator.swift
//  Coordinator Demo
//
//  Created by Difeng Chen on 4/26/22.
//

import UIKit

class HomeCoordinator {

    let viewCoordinator: HomeViewCoordinator
    private let networkCoordinator = HomeNetworkCoordinator()
    var mainCoordinator: MainCoordinator?

    private var user: String?

    init(view: UIView) {
        viewCoordinator = HomeViewCoordinator(view: view)
    }

    func configure() {
        viewCoordinator.configureView()

        networkCoordinator.fetchData { [weak self] user in
            self?.user = user

            self?.viewCoordinator.update(with: user)
        }
    }

    func navigationToUserProfile() {
        mainCoordinator?.pushUserProfileViewController(with: user ?? "")
    }
}
