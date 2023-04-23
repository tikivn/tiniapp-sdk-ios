//
//  ViewController.swift
//  ExampleSDK
//
//  Created by Han Han on 10/10/22.
//

import UIKit
import TiniAppSDK
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openTiniAppClicked(_ sender: Any) {
        TiniAppSDK.shared.delegate = self
        let vc = TiniAppSDK.shared.openMiniApp(appId: "vn.tiki.vip", pathPath: "pages/account/index", params: nil)
        vc.appId = "vn.tiki.vip"
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
}

extension ViewController: TiniAppSDKDelegate {
    func openPayment(transactionId: String, amount: Double, completedHandler: @escaping ([String : Any]?, Error?) -> Void) {
    
    }
    
    func getUserInfo(completedHandler: (TiniUser?, Error?) -> Void) {
        let tiniUser = TiniUser(id: "1", name: "Test user")
        completedHandler(tiniUser, nil)
    }
    
    func closeApp(completedHandler:() -> Void) {
        DispatchQueue.main.async {
            let controller = UIApplication.topViewController()
            controller?.dismiss(animated: true)
        }
    }
    
}
