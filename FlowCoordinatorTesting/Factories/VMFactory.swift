//
//  VMFactory.swift
//  FlowCoordinatorTesting
//
//  Created by Elayda,Jayson on 7/9/21.
//

import Foundation

protocol VMFactoryProtocol {
    static func makeLoginVM(appCoordinator: AppCoordinator) -> LoginVMProtocol
    static func makeDashboardVM(appCoordinator: AppCoordinator) -> DashboardVMProtocol
    static func makeDashboardDetailsVM(appCoordinator: AppCoordinator) -> DashboardDetailsVMProtocol
}

struct VMFactory: VMFactoryProtocol {
    static func makeLoginVM(appCoordinator: AppCoordinator) -> LoginVMProtocol {
        return LoginVM(appCoordinator: appCoordinator)
    }
    static func makeDashboardVM(appCoordinator: AppCoordinator) -> DashboardVMProtocol {
        let dashboardCoordinator = FlowCoordinatorFactory.makeDashboardCoordinator(navigationEngine: appCoordinator.engine, appCoordinator: appCoordinator)
        return DashboardVM(appCoordinator: appCoordinator, dashboardCoordinator: dashboardCoordinator)
    }
    static func makeDashboardDetailsVM(appCoordinator: AppCoordinator) -> DashboardDetailsVMProtocol {
        return DashboardDetailsVM(appCoordinator: appCoordinator)
    }
}
