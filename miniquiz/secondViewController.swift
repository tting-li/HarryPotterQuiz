//
//  secondViewController.swift
//  miniquiz
//
//  Created by Ting Ting Li on 7/29/21.
//

import UIKit

class secondViewController: UIViewController {
    
    //object of class example
    //points = the class made prior
    //have to declare this in every file that will be used
    var points = quizCounter()
    
    @IBOutlet weak var glassesImgTwo: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var fireboltImg: UIImageView!
    
    //move to the very last one to show final score w/out super.viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //adding the points if scored correctly
    @IBAction func firstAnswer(_ sender: Any) {
        points.userCounter += 1
        fireboltImg.isHidden = false
    }
    
    @IBAction func secondAnswer(_ sender: Any) {
        fireboltImg.isHidden = false

    }
    @IBAction func thirdAnswer(_ sender: Any) {
        fireboltImg.isHidden = false

    }
    @IBAction func fourthAnswer(_ sender: Any) {
        fireboltImg.isHidden = false

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //as? is this true or falses, sets a variable and checking is true or false if segue destination = secondview controller, create var VC
        if let thirdVC = segue.destination as? ThirdViewController {
            //setting the points for the next question
            thirdVC.points = points
            
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
