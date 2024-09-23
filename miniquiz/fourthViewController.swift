//
//  fourthViewController.swift
//  miniquiz
//
//  Created by Ting Ting Li on 7/29/21.
//

import UIKit

class fourthViewController: UIViewController {
    //class variable
    var points = quizCounter()
    //variables
    @IBOutlet weak var glassesThree: UIImageView!
    @IBOutlet weak var questionThree: UILabel!
    //imgs
    @IBOutlet weak var stairThree: UIImageView!
    @IBOutlet weak var stairOne: UIImageView!
    @IBOutlet weak var stairTwo: UIImageView!
    @IBOutlet weak var stairFour: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //buttons
    @IBAction func ansOne(_ sender: Any) {
        stairOne.isHidden = false
    }
    @IBAction func ansTwo(_ sender: Any) {
        points.userCounter += 1
        stairTwo.isHidden = false
    }
    @IBAction func ansThree(_ sender: Any) {
        stairThree.isHidden = false
    }
    @IBAction func ansFour(_ sender: Any) {
        stairFour.isHidden = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //as? is this true or falses, sets a variable and checking is true or false if segue destination = secondview controller, create var VC
        if let fifthVC = segue.destination as? fifthViewController {
            //setting the points for the next question
            fifthVC.points = points
            
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
