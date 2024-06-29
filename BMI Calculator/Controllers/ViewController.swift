
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightValue: UILabel!
    
    @IBOutlet weak var weightValueLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain=CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func heightSliderChanged(_ sender: UISlider) {
       let userHeight=(String(format: "%.2f", sender.value))
        heightValue.text="\(userHeight)m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
       let userWeight=(String(format: "%.2f", sender.value))
         weightValueLabel.text="\(userWeight)Kg"
    }
    
    @IBAction func calculatedButtonPressed(_ sender: UIButton) {
        let height=heightSlider.value
        let weight=heightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
      
        self.performSegue(withIdentifier: "goToresultScreen", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier=="goToresultScreen"){

            let resultVC=segue.destination as! ResultViewController
            resultVC.bmiValue=calculatorBrain.getBMI()
            resultVC.advice=calculatorBrain.getAdvice()
            resultVC.color=calculatorBrain.getColor()
            
          
        }
    }
}

