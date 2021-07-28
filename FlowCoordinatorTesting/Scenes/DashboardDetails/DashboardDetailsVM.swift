//
//  DashboardDetailsVM.swift
//  FlowCoordinatorTesting
//
//  Created by Elayda,Jayson on 7/28/21.
//

import Foundation

protocol DashboardDetailsVMProtocol: VMProtocol {}

class DashboardDetailsVM: DashboardDetailsVMProtocol {
    var appCoordinator: AppCoordinator

    required init(appCoordinator: AppCoordinator) {
        self.appCoordinator = appCoordinator
    }
}
