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
        selectedColorView.layer.cornerRadius = 15
        setupRedSlider()
        setupRedValue()
        setupGreenSlider()
        setupGreenValue()
        setupBlueSlider()
        setupBlueValue()
    }
    
    // MARK: - IBActions

    @IBAction func redSliderAction() {
        redValue.text = (round(redSlider.value * 100) / 100).formatted()
    }
    
    @IBAction func greenSliderAction() {
        greenValue.text = (round(greenSlider.value * 100) / 100).formatted()
    }
    
    @IBAction func blueSliderAction() {
        blueValue.text = (round(blueSlider.value * 100) / 100).formatted()
    }
    
    
    
    //MARK: - Private methods
    private func setupRedValue() {
        redValue.text = redSlider.value.formatted()
    }
    
    private func setupGreenValue() {
        greenValue.text = greenSlider.value.formatted()
    }
    
    private func setupBlueValue() {
        blueValue.text = blueSlider.value.formatted()
    }
    
    private func setupRedSlider() {
        redSlider.value = 0.5
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
        redSlider.minimumTrackTintColor = .red
    }
    
    private func setupGreenSlider() {
        greenSlider.value = 0.5
        greenSlider.minimumValue = 0.0
        greenSlider.maximumValue = 1.0
        greenSlider.minimumTrackTintColor = .green
    }
    
    private func setupBlueSlider() {
        blueSlider.value = 0.5
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
        blueSlider.minimumTrackTintColor = .blue
    }
    
}

