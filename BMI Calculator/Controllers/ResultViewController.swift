

import UIKit

class ResultViewController: UIViewController {
    var bmiValue:String=""
    var advice:String=""
    var color:UIColor=UIColor.white
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundColor: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text=bmiValue
        adviceLabel.text=advice
        view.backgroundColor=color
   
        
    }
    
    @IBAction func recalculatedButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

    

}
