//
//  DashboardVM.swift
//  FlowCoordinatorTesting
//
//  Created by Elayda,Jayson on 7/14/21.
//

import Foundation

protocol DashboardVMProtocol {
    func presentDetails()
    func presentSettings()
    func presentTransactionHistory()
}

struct DashboardVM: DashboardVMProtocol {
    func presentDetails() {
        print("Going to Details")
    }

    func presentSettings() {
        print("Going to Settings")
    }

    func presentTransactionHistory() {
        print("Going to Transaction History")
    }
}
