//
//  NetworksViewController.swift
//  GPACalc
//
//  Created by COSC2125 on 2/6/18.
//  Copyright © 2018 mbernhar. All rights reserved.
//

import UIKit

class NetworksViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    @IBOutlet weak var lblHomework: UILabel!
    @IBOutlet weak var sliderHomework: UISlider!
    @IBAction func sliderHomeworkAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lblHomework.text = "\(currentValue)%"
        updateGrade()
    }
    
    @IBOutlet weak var lblPaper: UILabel!
    
    @IBOutlet weak var sliderPaper: UISlider!
    @IBAction func sliderPaperAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lblPaper.text = "\(currentValue)%"
        updateGrade()
    }
    
    @IBOutlet weak var lblAttendance: UILabel!
    @IBOutlet weak var sliderAttendance: UISlider!
    
    @IBAction func sliderAttendanceAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lblAttendance.text = "\(currentValue)%"
        updateGrade()
    }
    
    @IBOutlet weak var lblExams: UILabel!
    @IBOutlet weak var sliderExams: UISlider!
    @IBAction func sliderExamsAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lblExams.text = "\(currentValue)%"
        updateGrade()
    }
    
    @IBOutlet weak var lblFinalGrade: UILabel!
    func updateGrade() -> Void {
        
        let hwGrade = sliderHomework.value
        let paperGrade = sliderPaper.value
        let attendanceGrade = sliderAttendance.value
        let examsGrade = sliderExams.value
        
        let finalGrade = (hwGrade) + (paperGrade) + (attendanceGrade) + (examsGrade)
        
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
