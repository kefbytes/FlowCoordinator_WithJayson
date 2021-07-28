//
//  LoginCoordinator.swift
//  FlowCoordinatorTesting
//
//  Created by Elayda,Jayson on 7/16/21.
//

import UIKit

class LoginCoordinator: Coordinator {
    var engine: NavigationEngineProtocol
    var coordinator: AppCoordinator

    required init(navigationEngine: NavigationEngineProtocol, appCoordinator: AppCoordinator) {
        engine = navigationEngine
        coordinator = appCoordinator
    }

    func start() {
        let loginVM = VMFactory.makeLoginVM(appCoordinator: coordinator)
        let loginVC = VCFactory.makeLoginVC(viewModel: loginVM)
        engine.push(viewController: loginVC)
    }
}
