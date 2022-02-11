//
//  SignUpViewController.swift
//  Udemy_UnitTestingSwiftMobileApp
//
//  Created by pablo.jee on 2022/02/11.
//

import UIKit

class SignUpViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // TODO: Make ViewController To Test + Make Alert Presentation Logic related VM Logic
    func errorhandler(error: SignUpError) {
        let alert = UIAlertController(title: "Error", message: "request failed", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        
        DispatchQueue.main.async {
            //identifier for testing
            alert.view.accessibilityIdentifier = "ErrorAloertDialog"
            self.present(alert, animated: true, completion: nil)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
