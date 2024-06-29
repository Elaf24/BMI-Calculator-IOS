
import Foundation
import UIKit

struct CalculatorBrain{
    
    var bmi:BMI?
    
    func getBMI()->String{
        
        let bmiValueInString=String(format: "%.1f", bmi?.value ?? 0.0)
        
        return bmiValueInString
    }
    mutating  func calculateBMI(height:Float,weight:Float){
        let bmiValue=weight/(height*height)
        if(bmiValue<2.5){
            bmi=BMI(value: bmiValue, advice: "Eat More you are under weight!", color:.blue)
        }
        else if(bmiValue>2.5 && bmiValue<24.5){
            bmi=BMI(value: bmiValue, advice: "Fit as a fiddle!", color:.green)
        }
        else{
            bmi=BMI(value: bmiValue, advice: "Eat less you are fat", color: .red)
        }
        
    }
    func getAdvice()->String{
        return bmi?.advice ?? "No advice for you"
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.red
    }
    
    
}
