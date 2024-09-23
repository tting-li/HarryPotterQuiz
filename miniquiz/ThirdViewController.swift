//
//  ThirdViewController.swift
//  miniquiz
//
//  Created by Ting Ting Li on 7/29/21.
//

import UIKit

class ThirdViewController: UIViewController {
    //Class operator
    var points = quizCounter()
    
    @IBOutlet weak var glassesThird: UIImageView!
    @IBOutlet weak var thirdQ: UILabel!
    @IBOutlet weak var broomstickTwo: UIImageView!
    //wands
    @IBOutlet weak var mapel: UIImageView!
    @IBOutlet weak var mahogany: UIImageView!
    @IBOutlet weak var elder: UIImageView!
    @IBOutlet weak var ash: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ansA(_ sender: Any) {
        mahogany.isHidden = false
    }
    @IBAction func ansB(_ sender: Any) {
        elder.isHidden = false
    }
    @IBAction func ansC(_ sender: Any) {
        ash.isHidden = false
        points.userCounter += 1
    }
    @IBAction func ansD(_ sender: Any) {
        mapel.isHidden = false
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //as? is this true or falses, sets a variable and checking is true or false if segue destination = secondview controller, create var VC
        if let fourthVC = segue.destination as? fourthViewController {
            //setting the points for the next question
            fourthVC.points = points
            
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
