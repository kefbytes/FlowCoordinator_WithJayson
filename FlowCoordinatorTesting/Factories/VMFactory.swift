//
//  VMFactory.swift
//  FlowCoordinatorTesting
//
//  Created by Elayda,Jayson on 7/9/21.
//

import Foundation

protocol VMFactoryProtocol {
    static func makeLoginVM() -> LoginVMProtocol
}

struct VMFactory: VMFactoryProtocol {
    static func makeLoginVM() -> LoginVMProtocol {
        return LoginVM()
    }
}
