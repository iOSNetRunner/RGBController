//
//  ViewController.swift
//  RGBController
//
//  Created by Dmitrii Galatskii on 27.04.2023.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var selectedColorView: UIView!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
    }
    
    override func viewWillLayoutSubviews() {
        selectedColorViewSetup()
        setupRedValue()
        setupGreenValue()
        setupBlueValue()
    }
    
    // MARK: - IBActions
    @IBAction func redSliderAction() {
        redValue.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        greenValue.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        blueValue.text = String(format: "%.2f", blueSlider.value)
    }
    
    //MARK: - Private methods
    private func setupRedValue() {
        redValue.text = String(format: "%.2f", redSlider.value)
    }
    
    private func setupGreenValue() {
        greenValue.text = String(format: "%.2f", greenSlider.value)
    }
    
    private func setupBlueValue() {
        blueValue.text = String(format: "%.2f", blueSlider.value)
        
    }
    
    private func setupRedSlider() {
        redSlider.value = 0.5
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
    }
    
    private func setupGreenSlider() {
        greenSlider.value = 0.5
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
    }
    
    private func setupBlueSlider() {
        blueSlider.value = 0.5
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
    }
    
    private func selectedColorViewSetup() {
        selectedColorView.layer.cornerRadius = 15
        selectedColorView.backgroundColor = .init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
}
