//
//  ViewController.swift
//  TraficLight
//
//  Created by Vladdoriy on 29.05.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var changeLightButton: UIButton!
    
    enum LightColour {
        case none, red, yellow, green
    }
    
    var currentColour:LightColour = .none
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
    }

    @IBAction func buttonDidTapped(_ sender: Any) {
        changeLightButton.setTitle("NEXT", for: .normal)
        
        switch currentColour {
        case .none:
            redLightView.alpha = 1
            currentColour = .red
        case .red:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            currentColour = .yellow
        case .yellow:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            currentColour = .green
        case .green:
            greenLightView.alpha = 0.3
            currentColour = .none
        }
        
    }
    
}

//import UIKit
//
//class ViewController: UIViewController {
//
//    @IBOutlet weak var redLightView: UIView!
//    @IBOutlet weak var yellowLightView: UIView!
//    @IBOutlet weak var greenLightView: UIView!
//    @IBOutlet weak var changeLightButton: UIButton!
//    
//    enum LightColour {
//        case none, red, yellow, green
//    }
//    
//    var currentColour: LightColour = .none
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // Инициализация всех световых индикаторов в выключенное состояние
//        redLightView.alpha = 0.3
//        yellowLightView.alpha = 0.3
//        greenLightView.alpha = 0.3
//        
//        // Закругление углов
//        redLightView.layer.cornerRadius = redLightView.frame.size.width / 2
//        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.width / 2
//        greenLightView.layer.cornerRadius = greenLightView.frame.size.width / 2
//        
//        // Начальное состояние кнопки
//        changeLightButton.setTitle("START", for: .normal)
//    }
//
//    @IBAction func buttonDidTapped(_ sender: Any) {
//        switch currentColour {
//        case .none:
//            currentColour = .red
//            changeLightButton.setTitle("NEXT", for: .normal)
//        case .red:
//            currentColour = .yellow
//        case .yellow:
//            currentColour = .green
//        case .green:
//            currentColour = .red
//        }
//        
//        updateLights()
//    }
//    
//    private func updateLights() {
//        redLightView.alpha = (currentColour == .red) ? 1.0 : 0.3
//        yellowLightView.alpha = (currentColour == .yellow) ? 1.0 : 0.3
//        greenLightView.alpha = (currentColour == .green) ? 1.0 : 0.3
//    }
//}
//
