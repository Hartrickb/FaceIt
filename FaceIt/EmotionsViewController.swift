//
//  EmotionsViewController.swift
//  FaceIt
//
//  Created by Bennett Hartrick on 5/23/17.
//  Copyright © 2017 Bennett. All rights reserved.
//

import UIKit

class EmotionsViewController: UIViewController {
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destinationViewController = segue.destination
        if let navigationController = destinationViewController as? UINavigationController {
            destinationViewController = navigationController.visibleViewController ?? destinationViewController
        }
        if let faceViewController = destinationViewController as? FaceViewController {
            if let identifier = segue.identifier {
                if let expression = emotionalFaces[identifier] {
                    faceViewController.expression = expression
                }
            }
        }
    }
    
    private let emotionalFaces: Dictionary<String, FacialExpression> = [
        "sad": FacialExpression(eyes: .closed, mouth: .frown),
        "happy": FacialExpression(eyes: .open, mouth: .smile),
        "worried": FacialExpression(eyes: .open, mouth: .smirk)
    ]
    
}
