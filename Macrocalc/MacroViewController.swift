//
//  MacroViewController.swift
//  Macrocalc
//
//  Created by Samuel Doherty on 10/28/14.
//  Copyright (c) 2014 home. All rights reserved.
//

import UIKit

class MacroViewController: UIViewController {

    @IBOutlet weak var pounds: UITextField!
    
    @IBOutlet weak var activityLevel: UITextField!
    
    @IBOutlet weak var carbsLabel: UILabel!
    @IBOutlet weak var proLabel: UILabel!
    @IBOutlet weak var fatLabel: UILabel!
    @IBOutlet weak var totalCalLabel: UILabel!
    
//    var totalWeight: Double = 0.0
    var totalCarbs: Double = 0.0
    var totalFats: Double = 0.0
    var totalPros: Double = 0.0
    
    var totalCals: Double = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func gainWeightButton(sender: UIButton) {
        var user = Goal()
        
        user.activityLevel = activityLevel.text
        
        user.totalPounds = Double((pounds.text as NSString).doubleValue)
        
        totalCals = user.gainWeigth()
        var myMacro = Macro()
        totalCarbs = myMacro.computeCarbs(totalCals)
        totalFats = myMacro.computeFats(totalCals)
        totalPros = myMacro.computePros(totalCals)
        
        
        
        updateView()
    }
    @IBAction func loseWeightButton(sender: UIButton) {
        var user = Goal()
        
        user.activityLevel = activityLevel.text
        
        user.totalPounds = Double((pounds.text as NSString).doubleValue)
        totalCals = user.loseWeight()
    
        var myMacro = Macro()
        totalCarbs = myMacro.computeCarbs(totalCals)
        totalFats = myMacro.computeFats(totalCals)
        totalPros = myMacro.computePros(totalCals)
        
        
        
        updateView()
        
    }
    
    func updateView() {
        self.carbsLabel.text = "\(Int(totalCarbs)) grams"
        self.proLabel.text = "\(Int(totalPros)) grams"
        self.fatLabel.text = "\(Int(totalFats)) grams"
        self.totalCalLabel.text = "\(Int(totalCals)) kcals"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
