//
//  fifthViewController.swift
//  miniquiz
//
//  Created by Ting Ting Li on 7/30/21.
//

import UIKit

class fifthViewController: UIViewController {
    
    var points = quizCounter()
    
    @IBOutlet weak var hpImg: UIImageView!
    @IBOutlet weak var HPTitle: UIImageView!
    @IBOutlet weak var scoreBoard: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreBoard.text = "score: \(points.userCounter)"
        // Do any additional setup after loading the view.
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
