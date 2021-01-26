import UIKit

@IBDesignable
class ClockView: UIView {
    var isSetuped = false
    
    var markerSize: CGFloat = 3
    var markerLength: CGFloat = 12
    var markerColor: UIColor = UIColor.blue
    
    var hourLineOffset: CGFloat = 50
    var hourLineSize: CGFloat = 8
    var hourLineColor: UIColor = UIColor.yellow
    
    var minutesLineOffset: CGFloat = 30
    @IBInspectable var minutesLineSize: CGFloat = 5
    var minutesLineColor: UIColor = UIColor.green
    
    var secondsLineOffset: CGFloat = 15
    var secondsLineSize: CGFloat = 2
    var secondsLineColor: UIColor = UIColor.red
    
    var hours: CGFloat = 1{
        didSet { updateTime() }
    }
    var minutes: CGFloat = 17{
        didSet { updateTime() }
    }
    @IBInspectable var seconds: CGFloat = 25{
        didSet { updateTime() }
    }
    
    var roundedViewColor = UIColor.yellow
    
    private let topMarker = UIView()
    private let leftMarker = UIView()
    private let rightMarker = UIView()
    private let bottomMarker = UIView()
    
    private let hourLine = UIView()
    private let minuteLine = UIView()
    private let secondLine = UIView()
    
    private let roundedView = UIView()
    
    override func prepareForInterfaceBuilder() {
                super.prepareForInterfaceBuilder()
                updateViews()
            }

    override func awakeFromNib() {
            super.awakeFromNib()
            DispatchQueue.main.async {
                self.updateViews()
            }
        }
    
    func updateViews(){
    let w = self.layer.frame.size.width
    let h = self.layer.frame.size.height
    hourLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
    hourLine.frame = CGRect(x: w / 2 - hourLineSize / 2,
                            y: hourLineOffset,
                            width: hourLineSize,
                            height: h/2 - hourLineOffset)
        print(hourLine.frame.size.width)
        print(hourLine.frame.size.height)
    hourLine.backgroundColor = minutesLineColor
        
    minuteLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
    minuteLine.frame = CGRect(x: w / 2 - minutesLineSize / 2,
                              y: minutesLineOffset,
                              width: minutesLineSize,
                              height: h/2 - minutesLineOffset)
    minuteLine.backgroundColor = minutesLineColor
    
    secondLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
    secondLine.frame = CGRect(x: w / 2 - secondsLineSize / 2,
                              y: secondsLineOffset,
                              width: secondsLineSize ,
                              height: h/2 - secondsLineOffset)
    secondLine.backgroundColor = secondsLineColor
    
    topMarker.frame = CGRect(x: w / 2 - markerSize / 2,
                             y: 0,
                             width: markerSize,
                             height: markerLength)
    bottomMarker.frame = CGRect(x: w / 2 - markerSize / 2,
                                y: h - markerLength,
                                width: markerSize,
                                height: markerLength)
    leftMarker.frame = CGRect(x: 0,
                              y: h / 2 - markerSize / 2,
                              width: markerLength,
                              height: markerSize)
    rightMarker.frame = CGRect(x: w - markerLength,
                               y: h / 2 - markerSize / 2,
                               width: markerLength,
                               height: markerSize)
    
    for v in [topMarker, leftMarker, rightMarker, bottomMarker]{
        v.backgroundColor = markerColor
    }
    
    roundedView.backgroundColor = roundedViewColor
    roundedView.frame = CGRect(x: w / 2 - 8,
                               y: h / 2 - 8,
                               width: 16,
                               height: 16)
    roundedView.layer.cornerRadius = 8
    
    layer.cornerRadius = frame.size.width / 2
    
    updateTime()
    
    if isSetuped { return }
    isSetuped = true
    
    for v in [topMarker, leftMarker, rightMarker, bottomMarker, hourLine, roundedView, minuteLine, secondLine]{
        addSubview(v)
    }
    updateTime()
    }
    
    func updateTime(){
        let angleHours = CGFloat.pi * 2 * (hours / CGFloat(12))
        hourLine.transform = CGAffineTransform(rotationAngle: angleHours)
        
        let angleMinutes = CGFloat.pi * 2 * (minutes / CGFloat(60))
        minuteLine.transform = CGAffineTransform(rotationAngle: angleMinutes)
        
        let angleSeconds = CGFloat.pi * 2 * (seconds / CGFloat(60))
        secondLine.transform = CGAffineTransform(rotationAngle: angleSeconds)
        
    }
    
    
}
