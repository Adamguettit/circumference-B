

//  Created by Adam.G 
// Sept-27-2018
//  This code calculates the area and the perimeter based on the 

import UIKit


import PlaygroundSupport

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var instructionLabel : UILabel!
    var radious : UILabel!
    
    var radiousTextField : UITextField!
    var widthTextField : UITextField!
    var calculateButton : UIButton!
    var circumferenceLabel : UILabel!
    
    
    override func viewDidLoad() {
        // create the UIView
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        
        // create all the UIElements
        instructionLabel = UILabel(frame: CGRect(x: 100, y: 100, width: 500, height: 50))
        instructionLabel.text = "Calculate the area and perimeter of a rectangle"
        view.addSubview(instructionLabel)
        
        radious = UILabel(frame: CGRect(x: 100, y: 200, width: 500, height: 50))
        radious.text = "Enter length"
        view.addSubview(radious)
        
        radiousTextField = UITextField(frame: CGRect(x: 200, y: 200, width: 200, height: 50))
        radiousTextField.borderStyle = UITextBorderStyle.roundedRect
        radiousTextField.placeholder = "In cm"
        view.addSubview(radiousTextField)
        
        calculateButton = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
        calculateButton.setTitle("Calculate", for: UIControlState.normal)
        calculateButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        calculateButton.addTarget(self, action: #selector(calculateAreaAndPerimeter), for: UIControlEvents.touchUpInside)
        view.addSubview(calculateButton)
        
        circumferenceLabel = UILabel(frame: CGRect(x: 100, y: 500, width: 500, height: 50))
        circumferenceLabel.text = nil
        view.addSubview(circumferenceLabel)
        
    }
    
    @objc func calculateAreaAndPerimeter() {
        // calculate the area and perimeter
        
        let radious : Float =  Float(radiousTextField.text!)!
        
        let area = 3.14 * radious * 2
        circumferenceLabel.text = "The Circumference is: \(area) cm"
        
    }
    
    // this is for when code is moved to Xcode, the Status bar will be removed
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// need to also comment this out to make work in Xcode
PlaygroundPage.current.liveView = ViewController()
