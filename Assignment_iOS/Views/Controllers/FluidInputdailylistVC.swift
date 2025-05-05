//
//  FluidInputdailylistVC.swift
//  Assignment_iOS
//
//  Created by apple on 04/05/25.
//

import UIKit

class FluidInputdailylistVC: UIViewController {
    
    
    @IBOutlet weak var tbldata: UITableView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var graphimg: UIImageView!
  
    var isListMode = false
    
    var selectedSegmentIndex = 0
    var name = ["Tea","Water","Juice","Water", "Milk","Water"]
    var name1 = ["50 ml","200 ml","200 ml","400 ml", "350 ml","300 ml","200 ml"]
    var name2 = ["05:22 PM","05:15 PM","02:00 PM","11:55 AM", "08:12 AM","06:30 AM","05:50 AM"]
    var name3 = ["Mon,25-01-2024","Tue,26-01-2024","Wed,27-01-2024","Thu,28-01-2024", "Fri,29-01-2024","Sat,30-01-2024","Sun,31-01-2024"]
    var name4 = ["1490 ml of 2000 ml","1900 ml of 2000 ml","2050 ml of 2000 ml","1840 ml of 2000 ml", "1950 ml of 2000 ml","1800 ml of 2000 ml","2000 ml of 2000 ml"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        graphimg.isHidden = true
        self.tbldata.delegate = self
        self.tbldata.dataSource = self
        self.tbldata.register(UINib(nibName: "FluidhistoryTVCell", bundle: nil), forCellReuseIdentifier: "FluidhistoryTVCell")
        self.tbldata.register(UINib(nibName: "Fluidhistory1TVCell", bundle: nil), forCellReuseIdentifier: "Fluidhistory1TVCell")
        isListMode = true
        tbldata.isHidden = false
        selectedSegmentIndex = segmentControl.selectedSegmentIndex
        tbldata.reloadData()
    }
    
    
    @IBAction func segment(_ sender: UISegmentedControl) {
        selectedSegmentIndex = sender.selectedSegmentIndex
        isListMode = true
        graphimg.isHidden = true
        tbldata.isHidden = false
        tbldata.reloadData()
    }
    
    
    @IBAction func btnback(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func btnlist(_ sender: UIButton) {
          isListMode = true
          graphimg.isHidden = true
          tbldata.isHidden = false
          tbldata.reloadData()
    }
    
    
    @IBAction func btngraph(_ sender: UIButton) {
        isListMode = false
            graphimg.isHidden = false
            tbldata.isHidden = true
            updateGraphImage()
    }
    
    func updateGraphImage() {
        if selectedSegmentIndex == 0 {
           
            graphimg.image = UIImage(named: "graph 1")
        } else if selectedSegmentIndex == 1 {
            
            graphimg.image = UIImage(named: "graph 2")
        } else {
 
        }
    }
}
extension FluidInputdailylistVC : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isListMode {
            return selectedSegmentIndex == 0 ? name.count : name3.count
        } else {
            return 0 
        }
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if isListMode {
            if selectedSegmentIndex == 0 {
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "FluidhistoryTVCell", for: indexPath) as! FluidhistoryTVCell
                cell.selectionStyle = .none
                cell.lblname.text = name[indexPath.row]
                cell.lblml.text = name1[indexPath.row]
                cell.lbltime.text = name2[indexPath.row]
                return cell
            } else {
               
                let cell = tableView.dequeueReusableCell(withIdentifier: "Fluidhistory1TVCell", for: indexPath) as! Fluidhistory1TVCell
                cell.selectionStyle = .none
                cell.lbldate.text = name3[indexPath.row]
                cell.lbltime.text = name4[indexPath.row]
                return cell
            }
        } else {
            
            return UITableViewCell()
        }
    }



   
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return selectedSegmentIndex == 0 ? 65 : 49
        }

        
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
}
