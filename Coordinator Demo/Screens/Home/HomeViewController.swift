//
//  HomeViewController.swift
//  Coordinator Demo
//
//  Created by Difeng Chen on 4/26/22.
//

import UIKit

class HomeViewController: UIViewController {

    private(set) lazy var coordinator = HomeCoordinator(view: self.view)

    override func viewDidLoad() {
        super.viewDidLoad()

        coordinator.configure()
    }
}

