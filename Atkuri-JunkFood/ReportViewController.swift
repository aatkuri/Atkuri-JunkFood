//
//  ReportViewController.swift
//  Atkuri-JunkFood
//
//  Created by Atkuri,Ashok on 3/8/18.
//  Copyright © 2018 Atkuri,Ashok. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController {

    
    @IBOutlet weak var BtnReset: UIButton!
    @IBOutlet weak var TxtViewReport: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AppDelegate.foodRecorderInstance.loadData()
        TxtViewReport.text = AppDelegate.foodRecorderInstance.combinedReport()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func BtnResetOnClick(_ sender: Any) {
        AppDelegate.foodRecorderInstance.reset()
        TxtViewReport.text = AppDelegate.foodRecorderInstance.combinedReport()
    }
    
    @IBAction func unwindFromTable(segue:UIStoryboardSegue){
        TxtViewReport.text = AppDelegate.foodRecorderInstance.combinedReport()
    }
    
}
