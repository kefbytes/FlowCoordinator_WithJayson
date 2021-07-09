//
//  VCFactory.swift
//  FlowCoordinatorTesting
//
//  Created by Elayda,Jayson on 7/9/21.
//

import Foundation

protocol VCFactoryProtocol {
    static func makeLoginVC(viewModel: LoginVMProtocol) -> LoginVC
}

struct VCFactory: VCFactoryProtocol {
    static func makeLoginVC(viewModel: LoginVMProtocol) -> LoginVC {
        return LoginVC(viewModel: viewModel)
    }
}
