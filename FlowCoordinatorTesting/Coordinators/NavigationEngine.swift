//
//  NavigationEngine.swift
//  FlowCoordinatorTesting
//
//  Created by Elayda,Jayson on 7/14/21.
//

import UIKit

protocol NavigationEngineProtocol {
    func push(viewController: UIViewController)
    func replace(viewController: UIViewController)
}

class NavigationEngine: NavigationEngineProtocol {
    private let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func push(viewController: UIViewController) {
        navigationController.pushViewController(viewController, animated: true)
    }

    func replace(viewController: UIViewController) {
        navigationController.viewControllers = [viewController]
    }
}
