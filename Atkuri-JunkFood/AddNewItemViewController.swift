//
//  AddNewItemViewController.swift
//  Atkuri-JunkFood
//
//  Created by Atkuri,Ashok on 3/8/18.
//  Copyright © 2018 Atkuri,Ashok. All rights reserved.
//

import UIKit

class AddNewItemViewController: UIViewController {

    @IBOutlet weak var TxtItemName: UITextField!
    @IBOutlet weak var TxtCalories: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (TxtItemName.text != nil || TxtItemName.text != "") && (TxtCalories.text != nil && TxtCalories.text != "") {
            AppDelegate.foodRecorderInstance.addNewItem(name: TxtItemName.text!, calories: Double(TxtCalories.text!)!)
        }
    }
    

}
