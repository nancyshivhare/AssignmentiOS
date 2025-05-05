//
//  SuccessfullpopupVC.swift
//  Assignment_iOS
//
//  Created by apple on 04/05/25.
//

import UIKit

class SuccessfullpopupVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                self.dismiss(animated: true, completion: nil)
            }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
       
        if let fluidEditVC = self.presentingViewController {
            fluidEditVC.dismiss(animated: false, completion: nil)
        }
    }


   
}
