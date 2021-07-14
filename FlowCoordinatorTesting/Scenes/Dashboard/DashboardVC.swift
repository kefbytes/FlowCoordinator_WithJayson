//
//  DashboardVC.swift
//  FlowCoordinatorTesting
//
//  Created by Elayda,Jayson on 7/14/21.
//

import UIKit

class DashboardVC: UIViewController {
    var dashboardVM: DashboardVMProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        createDetailsButton()
    }

    init(viewModel: DashboardVMProtocol) {
        dashboardVM = viewModel

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func createDetailsButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitle("Details", for: .normal)
        button.addTarget(self, action: #selector(self.detailsAction), for: .touchUpInside)
        view.addSubview(button)
        button.center = view.center
    }

    @objc private func detailsAction() {
        dashboardVM?.presentDetails()
    }
}
