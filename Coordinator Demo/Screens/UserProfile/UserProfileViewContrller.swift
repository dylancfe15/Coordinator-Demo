//
//  UserProfileViewContrller.swift
//  Coordinator Demo
//
//  Created by Difeng Chen on 4/26/22.
//

import UIKit

class UserProfileViewController: UIViewController {

    private(set) lazy var coodinator = UserProfileCoodinator(view: self.view)

    override func viewDidLoad() {
        super.viewDidLoad()

        coodinator.configure()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        coodinator.updateUser()
    }
}
