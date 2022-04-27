//
//  NetworkCoordinator.swift
//  Coordinator Demo
//
//  Created by Difeng Chen on 4/26/22.
//

import Foundation

class HomeNetworkCoordinator {

    func fetchData(completion: @escaping (_ users: String) -> Void) {
        // MARK: - Fetch users from the server
        completion("Sara")
    }
}
