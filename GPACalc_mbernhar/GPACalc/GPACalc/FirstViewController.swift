//
//  FirstViewController.swift
//  GPACalc
//
//  Created by COSC2125 on 2/6/18.
//  Copyright © 2018 mbernhar. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var hwSlider: UISlider!
    
   
    @IBOutlet weak var lblHw: UILabel!
    
    @IBAction func hwSliderValueChangeAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        updateGrade()
        lblHw.text = "\(currentValue)%"
        
        
        
    }
    
    @IBOutlet weak var lblGrpHw: UILabel!
    
    @IBOutlet weak var sliderGrpHw: UISlider!
    
    @IBAction func GrpHwValueChangeAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        updateGrade()
        lblGrpHw.text = "\(currentValue)%"
    }
    @IBOutlet weak var lblClasswork: UILabel!
    
    @IBOutlet weak var sliderClasswork: UISlider!
    @IBAction func sliderValueChangeAction(_ sender: UISlider) {
        updateGrade()
        let currentValue = Int(sender.value)
        lblClasswork.text = "\(currentValue)%"
    }
    
    @IBOutlet weak var lblPrototype: UILabel!
    
    @IBOutlet weak var sliderPrototype: UISlider!
    @IBAction func prototypeSliderValueChangeAction(_ sender: UISlider) {
        updateGrade()
        let currentValue = Int(sender.value)
        
        lblPrototype.text = "\(currentValue)%"
    }
    @IBOutlet weak var lblFinal: UILabel!
    @IBOutlet weak var sliderFinal: UISlider!
    @IBAction func sliderFinalValueChangeAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lblFinal.text = "\(currentValue)%"
        updateGrade()
    }
    
    @IBOutlet weak var lblFinalGrade: UILabel!
    
    func updateGrade() -> Void {
    
        let hwGrade = hwSlider.value
        let grpHWGrade = sliderGrpHw.value
        let classworkGrade = sliderClasswork.value
        let protoGrade = sliderPrototype.value
        let projectGrade = sliderFinal.value
        let finalGrade = (hwGrade) + (grpHWGrade) + (classworkGrade) + (protoGrade) + (projectGrade)
    
        if(finalGrade >= 90)
        {
            lblFinalGrade.shadowColor = UIColor.green
            lblFinalGrade.text = "\(finalGrade.rounded())%(A)"
        }
        else if(finalGrade >= 80 && finalGrade < 90)
        {
            lblFinalGrade.shadowColor = UIColor.white
            lblFinalGrade.text = "\(finalGrade.rounded())%(B)"
        }
        else if(finalGrade >= 70 && finalGrade < 80)
        {
            lblFinalGrade.shadowColor = UIColor.white
            lblFinalGrade.text = "\(finalGrade.rounded())%(C)"
        }
        else if(finalGrade >= 60 && finalGrade < 70)
        {
            lblFinalGrade.shadowColor = UIColor.white
            lblFinalGrade.text = "\(finalGrade.rounded())%(D)"
        }
        else{
            lblFinalGrade.shadowColor = UIColor.red
            lblFinalGrade.text = "\(finalGrade.rounded())%(F)"
        }
        
    }
    
}

