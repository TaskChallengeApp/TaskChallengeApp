//
//  DayView.swift
//  DailyApp
//
//  Created by Burak Emre gündeş on 17.12.2022.
//

import UIKit

class DayView: UIView {
    
    
    private lazy var containerView : UIView = {
        var view = UIView()
        view.backgroundColor = .white
        view.layer.borderWidth = 2.0
        view.layer.borderColor = UIColor.black.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12.0
        return view
    }()
    
    private lazy var dayLabel : UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1"
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 25.0, weight: .bold)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure(){
        addSubview(containerView)
        containerView.addSubview(dayLabel)
    
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.heightAnchor.constraint(equalTo: containerView.widthAnchor),
           // containerView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 1/7),
            
            
            dayLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            dayLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),

        ])
        
        
    }
    
    
    
}
