//
//  ViewController.swift
//  MusicApp
//
//  Created by yousef mandani on 27/02/2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let uiVisualEffect = UIVisualEffectView(effect: UIBlurEffect(style: .light))
    let backgroundImageView = UIImageView()
    let songImageView = UIImageView()
    let songLabel = UILabel()
    let subLabel = UILabel()
    let slider = UISlider()
    let beginLabel = UILabel()
    let endLabel = UILabel()
    let prevButton = UIButton()
    let playButton = UIButton()
    let nextButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(backgroundImageView)
        view.addSubview(uiVisualEffect)
        view.addSubview(songImageView)
        view.addSubview(songLabel)
        view.addSubview(subLabel)
        view.addSubview(slider)
        view.addSubview(beginLabel)
        view.addSubview(endLabel)
        view.addSubview(prevButton)
        view.addSubview(playButton)
        view.addSubview(nextButton)
        
        
        backgroundImageView.image = UIImage(named: "GOT")
        backgroundImageView.contentMode = .scaleToFill
        backgroundImageView.frame = view.bounds
        
        uiVisualEffect.frame = backgroundImageView.bounds
        
        songImageView.image = UIImage(named: "GOT")
        songImageView.contentMode = .scaleToFill
        songImageView.layer.cornerRadius = 15
        songImageView.clipsToBounds = true
        
        songImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-50)
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalTo(songImageView.snp.width).multipliedBy(0.9)
        }
        
        songLabel.text = "Game Of Thrones"
        songLabel.font = .systemFont(ofSize: 27)
        
        songLabel.snp.makeConstraints { make in
            make.top.equalTo(songImageView.snp.bottom).offset(5)
            make.centerX.equalTo(songImageView.snp.centerX)
        }
        
        subLabel.text = "Main Title"
        subLabel.font = .systemFont(ofSize: 22)
        
        subLabel.snp.makeConstraints { make in
            make.top.equalTo(songLabel.snp.bottom).offset(5)
            make.centerX.equalTo(songImageView.snp.centerX)
        }
                
        slider.snp.makeConstraints { make in
            make.top.equalTo(subLabel.snp.bottom).offset(20)
            make.centerX.equalTo(songImageView.snp.centerX)
            make.width.equalToSuperview().multipliedBy(0.9)
        }
        
        beginLabel.text = "0.00"
        
        beginLabel.snp.makeConstraints { make in
            make.leading.equalTo(slider.snp.leading)
            make.top.equalTo(slider.snp.bottom).offset(5)
        }
        
        endLabel.text = "-1:45"
        
        endLabel.snp.makeConstraints { make in
            make.trailing.equalTo(slider.snp.trailing)
            make.top.equalTo(slider.snp.bottom).offset(5)
        }
        
        playButton.setImage(.init(systemName: "play.fill", withConfiguration: UIImage.SymbolConfiguration(font: .systemFont(ofSize: 35))), for: .normal)
        playButton.tintColor = .white
        playButton.layer.cornerRadius = 50/2
        
        playButton.snp.makeConstraints { make in
            make.top.equalTo(slider.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(50)
        }
        
        prevButton.setImage(.init(systemName: "backward.fill", withConfiguration: UIImage.SymbolConfiguration(font: .systemFont(ofSize: 35))), for: .normal)
        prevButton.tintColor = .white
        prevButton.layer.cornerRadius = 50/2
        
        prevButton.snp.makeConstraints { make in
            make.centerY.equalTo(playButton.snp.centerY)
            make.trailing.equalTo(playButton.snp.leading).offset(-35)
            make.height.width.equalTo(50)
        }
        
        nextButton.setImage(.init(systemName: "forward.fill", withConfiguration: UIImage.SymbolConfiguration(font: .systemFont(ofSize: 35))), for: .normal)
        nextButton.tintColor = .white
        nextButton.layer.cornerRadius = 50/2
        
        nextButton.snp.makeConstraints { make in
            make.centerY.equalTo(playButton.snp.centerY)
            make.leading.equalTo(playButton.snp.trailing).offset(35)
            make.height.width.equalTo(50)
        }
    }
}

