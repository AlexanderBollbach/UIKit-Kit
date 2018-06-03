import UIKit

extension UIView {
    
    public func pinTo(superView: UIView, insetBy insets: CGFloat = 0) {
        
        superView.addSubview(self)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.leftAnchor.constraint(equalTo: superView.leftAnchor, constant: insets).isActive = true
        self.rightAnchor.constraint(equalTo: superView.rightAnchor, constant: -insets).isActive = true
        self.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -insets).isActive = true
        self.topAnchor.constraint(equalTo: superView.topAnchor, constant: insets).isActive = true
    }
    
    public func setContent(view: UIView) {
        
        subviews.forEach {
            $0.removeFromSuperview()
        }
        
        view.pinTo(superView: self)
    }
    
    
//    func pinTo(superView: UIView, insetBy insets: CGFloat) {
//
//        superView.addSubview(self)
//
//        self.translatesAutoresizingMaskIntoConstraints = false
//
//        self.leftAnchor.constraint(equalTo: superView.leftAnchor, constant: insets).isActive = true
//        self.rightAnchor.constraint(equalTo: superView.rightAnchor, constant: -insets).isActive = true
//        self.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -insets).isActive = true
//        self.topAnchor.constraint(equalTo: superView.topAnchor, constant: insets).isActive = true
//
//    }
//
    
    public func pinTo(superView: UIView) {
        
        pinTo(superView: superView, insetBy: 0)
        
    }
    
    public func pinToLayoutMargin(superView: UIView) {
        
        superView.addSubview(self)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.leftAnchor.constraint(equalTo: superView.leftAnchor, constant: 0).isActive = true
        self.rightAnchor.constraint(equalTo: superView.rightAnchor, constant: 0).isActive = true
        self.bottomAnchor.constraint(equalTo: superView.layoutMarginsGuide.bottomAnchor, constant: 0).isActive = true
        self.topAnchor.constraint(equalTo: superView.layoutMarginsGuide.topAnchor, constant: 0).isActive = true
        
        
    }
    
    
    public func pinToBottom(superView: UIView, heightMultiplier: CGFloat?) {
        
        superView.addSubview(self)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        self.widthAnchor.constraint(equalTo: superView.widthAnchor, multiplier: 1).isActive = true
        self.bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
        
        if let heightMultiplier = heightMultiplier {
            self.heightAnchor.constraint(equalTo: superView.heightAnchor, multiplier: heightMultiplier).isActive = true
        }
    }
    
    
    public func pinToTop(superView: UIView, heightMultiplier: CGFloat) {
        
        superView.addSubview(self)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        self.widthAnchor.constraint(equalTo: superView.widthAnchor, multiplier: 1).isActive = true
        self.topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        
        
        self.heightAnchor.constraint(equalTo: superView.heightAnchor, multiplier: heightMultiplier).isActive = true
        
    }
    
    
    public func pinToTopLeft(superView: UIView, heightMultiplier: CGFloat, widthMultiplier: CGFloat) {
        
        superView.addSubview(self)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.widthAnchor.constraint(equalTo: superView.widthAnchor, multiplier: widthMultiplier).isActive = true
        self.leftAnchor.constraint(equalTo: superView.leftAnchor).isActive = true
        self.topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        
        self.heightAnchor.constraint(equalTo: superView.heightAnchor, multiplier: heightMultiplier).isActive = true
    }
    
    public func pinToTopRight(superView: UIView, heightMultiplier: CGFloat, widthMultiplier: CGFloat) {
        
        superView.addSubview(self)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.widthAnchor.constraint(equalTo: superView.widthAnchor, multiplier: widthMultiplier).isActive = true
        self.rightAnchor.constraint(equalTo: superView.rightAnchor).isActive = true
        self.topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        
        self.heightAnchor.constraint(equalTo: superView.heightAnchor, multiplier: heightMultiplier).isActive = true
    }
    
    
    public func sizeInSuper(proportion: CGFloat, superView: UIView) {
        
        //        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.widthAnchor.constraint(equalTo: superView.widthAnchor, multiplier: proportion).isActive = true
        self.heightAnchor.constraint(equalTo: superView.heightAnchor, multiplier: proportion).isActive = true
        
    }
    
    public func centerInSuper2(proportion: CGFloat, superView: UIView) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: superView.centerYAnchor).isActive = true
        self.widthAnchor.constraint(equalTo: superView.widthAnchor, multiplier: proportion).isActive = true
        self.heightAnchor.constraint(equalTo: superView.heightAnchor, multiplier: proportion).isActive = true
        
    }
    
    public func pinTo(superView: UIView, widthAmount: CGFloat, heightAmount: CGFloat) {
        
        superView.addSubview(self)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: superView.centerYAnchor).isActive = true
        
        self.widthAnchor.constraint(equalTo: superView.widthAnchor, multiplier: widthAmount).isActive = true
        self.heightAnchor.constraint(equalTo: superView.heightAnchor, multiplier: heightAmount).isActive = true
    }
}
