//
//  DiscreteMathViewController.swift
//  GPACalc
//
//  Created by COSC2125 on 2/6/18.
//  Copyright © 2018 mbernhar. All rights reserved.
//

import UIKit

class DiscreteMathViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var lblHomework: UILabel!
    
    @IBOutlet weak var sliderHomework: UISlider!
    
    
    @IBAction func sliderHomeworkAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lblHomework.text = "\(currentValue)%"
        updateGrade()
    }
    
    @IBOutlet weak var lblQuizzes: UILabel!
    
    @IBOutlet weak var sliderQuizzes: UISlider!
    
    @IBAction func sliderQuizzesAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lblQuizzes.text = "\(currentValue)%"
        updateGrade()
    }
    
    @IBOutlet weak var lblAttendance: UILabel!
    @IBOutlet weak var sliderAttendance: UISlider!
    @IBAction func sliderAttendanceAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lblAttendance.text = "\(currentValue)%"
        updateGrade()
    }
    
    @IBOutlet weak var lblAssessments: UILabel!
    
    @IBOutlet weak var sliderAssessments: UISlider!
    @IBAction func sliderAssessmentsAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lblAssessments.text = "\(currentValue)%"
        updateGrade()
    }
    
    @IBOutlet weak var lblFinalGrade: UILabel!
    func updateGrade() -> Void {
        
        let hwGrade = sliderHomework.value
        let quizzesGrade = sliderQuizzes.value
        let attendanceGrade = sliderAttendance.value
        let assessmentsGrade = sliderAssessments.value
        
        let finalGrade = (hwGrade) + (quizzesGrade) + (attendanceGrade) + (assessmentsGrade)
        
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
