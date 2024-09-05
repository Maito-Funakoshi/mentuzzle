//
//  ResultViewController.swift
//  mentuzzle
//
//  Created by 船越舞斗 on 2024/09/04.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultFi: UILabel!
    @IBOutlet weak var resultFe: UILabel!
    @IBOutlet weak var resultTi: UILabel!
    @IBOutlet weak var resultTe: UILabel!
    @IBOutlet weak var resultSi: UILabel!
    @IBOutlet weak var resultSe: UILabel!
    @IBOutlet weak var resultNi: UILabel!
    @IBOutlet weak var resultNe: UILabel!
    
    var Fi : Int?
    var Fe : Int?
    var Ti : Int?
    var Te : Int?
    var Si : Int?
    var Se : Int?
    var Ni : Int?
    var Ne : Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultFi.text = "\(Fi!)"
        resultFe.text = "\(Fe!)"
        resultTi.text = "\(Ti!)"
        resultTe.text = "\(Te!)"
        resultSi.text = "\(Si!)"
        resultSe.text = "\(Se!)"
        resultNi.text = "\(Ni!)"
        resultNe.text = "\(Ne!)"
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
