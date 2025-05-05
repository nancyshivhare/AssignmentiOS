//
//  FluidintakeVC.swift
//  Assignment_iOS
//
//  Created by apple on 04/05/25.
//

import UIKit

class FluidintakeVC: UIViewController {

    @IBOutlet weak var btnupdate: UIButton!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var segmentcontrol: UISegmentedControl!
    @IBOutlet weak var btnhistory: UIButton!
    @IBOutlet weak var btnwater: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       segmentcontrol.selectedSegmentIndex = 0
       updateSegmentView()
    }
    
    func updateSegmentView() {
        if segmentcontrol.selectedSegmentIndex == 0 {
            view1.isHidden = false
            view2.isHidden = true
        } else {
            view2.isHidden = false
        }
    }

    
    @IBAction func btnwater(_ sender: UIButton) {
        imageview.image = UIImage(named: "glass")
        btnwater.setImage(UIImage(named: "Module 11"), for: .normal)
    }
    

    @IBAction func segmentcontrol(_ sender: UISegmentedControl) {
                   updateSegmentView()
    }
    
    @IBAction func btnfluidmanually(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Fluidintakeedit1VC") as! Fluidintakeedit1VC
        vc.modalPresentationStyle = .overCurrentContext
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true)
    }
    
    @IBAction func btnselectsize(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "FluidIntakeEditVC") as! FluidIntakeEditVC
        vc.modalPresentationStyle = .overCurrentContext
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true)
    }
    
    
    @IBAction func btnaddintake(_ sender: UIButton) {
        
    }
  
    
    @IBAction func btnhistory(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "FluidInputdailylistVC") as! FluidInputdailylistVC
       self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func btnupdate(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "OrderSuccessViewController") as! OrderSuccessViewController
        vc.modalPresentationStyle = .overCurrentContext
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true)
    }
}

