//
//  practiceVC.swift
//  gre-prep
//
//  Created by Ali Abouelatta on 11/1/17.
//  Copyright © 2017 Ali Abouelatta. All rights reserved.
//

import UIKit

class practiceVC: UIViewController {

    //Practice Labels
    @IBOutlet weak var practWordTypeLbl: UILabel!
    @IBOutlet weak var practSentenceLbl: UILabel!
    @IBOutlet weak var practCorrectScoreLbl: UILabel!
    @IBOutlet weak var practMistakesScoreLbl: UILabel!
    
    // Buttons
    @IBOutlet weak var ans1Btn: UIButton!
    @IBOutlet weak var ans3Btn: UIButton!
    @IBOutlet weak var ans4Btn: UIButton!
    @IBOutlet weak var ans2Btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func anotherPracticeQ(){
        let word1 = wordGRE(def: "the king", theword: "ALI", score: 20, learned: true)
        practSentenceLbl.text = word1.def
        practCorrectScoreLbl.text = "Correct: 1"
        practMistakesScoreLbl.text = "Mistakes: 1"
    }
    
    @IBAction func answerPressed(_ sender: Any) {
        anotherPracticeQ()
        showAlert()
    }

    // Define a view
    var popup:UIView!
    func showAlert() {
        // customise your view
        popup = UIView(frame: CGRect(x: 100, y: 200, width: 200, height: 200))
        popup.backgroundColor = UIColor.red
        
        // show on screen
        self.view.addSubview(popup)
        
        // set the timer
        Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(self.dismissAlert), userInfo: nil, repeats: false)
    }
    
    @objc func dismissAlert(){
        if popup != nil { // Dismiss the view from here
            popup.removeFromSuperview()
        }
    }
}









