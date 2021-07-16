//
//  FlowCoordinatorFactory.swift
//  FlowCoordinatorTesting
//
//  Created by Elayda,Jayson on 7/14/21.
//

import UIKit

protocol FlowCoordinatorFactoryProtocol {
    static func makeAppCoordinator(navigationEngine: NavigationEngineProtocol, window: UIWindow) -> AppCoordinator
    static func makeLoginCoordinator(navigationEngine: NavigationEngineProtocol, appCoordinator: AppCoordinator) -> LoginCoordinator
}

class FlowCoordinatorFactory: FlowCoordinatorFactoryProtocol {
    static func makeAppCoordinator(navigationEngine: NavigationEngineProtocol, window: UIWindow) -> AppCoordinator {
        return AppCoordinator(navigationEngine: navigationEngine, window: window)
    }
    static func makeLoginCoordinator(navigationEngine: NavigationEngineProtocol, appCoordinator: AppCoordinator) -> LoginCoordinator {
        return LoginCoordinator(navigationEngine: navigationEngine, appCoordinator: appCoordinator)
    }
}
