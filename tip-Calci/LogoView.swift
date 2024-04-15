//
//  LogoView.swift
//  tip-Calci
//
//  Created by Ashish Jain on 11/04/24.
//

import UIKit

class LogoView:UIView{
    
    
    private let imageView:UIImageView = {
        let view = UIImageView(image: .init(named: "icCalculatorBW"))
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private let topLabel:UILabel = {
        let label = UILabel()
        let text = NSMutableAttributedString(
            string: "Mr TIP",
            attributes: [.font:ThemeFont.demiBold(ofSize: 16)])
        text.addAttributes([.font:ThemeFont.bold(ofSize: 24)], range: NSMakeRange(3, 3))
        label.attributedText = text
        return label
    }()
    
    let bottomLabel:UILabel = {
        LabelFactory.build(
            text: "Calculator",
            font: ThemeFont.demiBold(ofSize: 20 ),
            textAllignment: .left)
    }()
    
    
    private lazy var vStackView:UIStackView={
        let view = UIStackView(arrangedSubviews: [
        topLabel,
        bottomLabel
        ])
        view.axis = .vertical
        view.spacing = -4
        return view
    }()
    
    private lazy var hStackView : UIStackView = {
       let view = UIStackView(arrangedSubviews: [
        imageView,
        vStackView
       ])
        view.axis = .horizontal
        view.spacing = 8
        view.alignment = .center
        return view
    }()
    
    init(){
        super.init(frame: .zero)
        
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout(){

        addSubview(hStackView)
        hStackView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.center.equalToSuperview()
        }
        imageView.snp.makeConstraints { make in
            make.height.equalTo(imageView.snp.width)
        }
    }
}

