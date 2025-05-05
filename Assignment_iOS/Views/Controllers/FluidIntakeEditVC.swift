//
//  FluidIntakeEditVC.swift
//  Assignment_iOS
//
//  Created by apple on 04/05/25.
//

import UIKit

class FluidIntakeEditVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
      if let fluidVC = self.presentingViewController?.presentingViewController {
            self.presentingViewController?.dismiss(animated: false, completion: {
                fluidVC.present(self, animated: true, completion: nil)
            })
        }
    }

    @IBAction func btndismiss(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    
    
    @IBAction func btndimiss(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    
    
    @IBAction func btnaddML(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SuccessfullpopupVC") as! SuccessfullpopupVC
        vc.modalPresentationStyle = .overCurrentContext
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true) {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.dismiss(animated: false, completion: nil)
            }
        }
    }
}
