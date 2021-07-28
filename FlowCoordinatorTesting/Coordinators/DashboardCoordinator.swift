//
//  DashboardCoordinator.swift
//  FlowCoordinatorTesting
//
//  Created by Elayda,Jayson on 7/28/21.
//

import UIKit

class DashboardCoordinator: Coordinator {
    var engine: NavigationEngineProtocol
    var coordinator: AppCoordinator

    required init(navigationEngine: NavigationEngineProtocol, appCoordinator: AppCoordinator) {
        engine = navigationEngine
        coordinator = appCoordinator
    }

    func start() {
        let dashboardVM = VMFactory.makeDashboardVM(appCoordinator: coordinator)
        let dashboardVC = VCFactory.makeDashboardVC(viewModel: dashboardVM)
        engine.push(viewController: dashboardVC)
    }

    func presentDashboardDetails() {
        let dashboardDetailsVM = VMFactory.makeDashboardDetailsVM(appCoordinator: coordinator)
        let dashboardDetailsVC = VCFactory.makeDashboardDetailsVC(viewModel: dashboardDetailsVM)
        engine.push(viewController: dashboardDetailsVC)
    }
}
