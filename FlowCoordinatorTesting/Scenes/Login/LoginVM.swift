//
//  LoginVM.swift
//  FlowCoordinatorTesting
//
//  Created by Elayda,Jayson on 7/9/21.
//

import Foundation

protocol LoginVMProtocol {
    func loginWithCredentials()
}

struct LoginVM: LoginVMProtocol {
    func loginWithCredentials() {
        print("loggin in")
    }
}
