//
//  OrderSuccessViewController.swift
//  Assignment_iOS
//
//  Created by apple on 05/05/25.
//

import UIKit

class OrderSuccessViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                self.dismiss(animated: true, completion: nil)
            }
        
    }
    

   

}
