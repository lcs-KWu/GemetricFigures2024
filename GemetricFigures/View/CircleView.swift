//
//  CircleView.swift
//  GemetricFigures
//
//  Created by Yixuan Wu on 2024-10-04.
//

import SwiftUI

struct CircleView: View {
    
    //store properties
    @State var CurrentCircle = Circle(radius: 10)
    //computed propertie
    var body: some View {
        VStack{
            
            //MARK: add a image
            // input
            //label(intro what slide is for)
            Text("Radius")
            //slider control allow user input
            Slider(
                value:$CurrentCircle.radius,
                in: 1...100,
                step: 1.0
            )
            //output
            //lable(show current slider value)
            Text("Radius is \(CurrentCircle.radius.formatted())")
            //label diameter
            Text("diameter is \(CurrentCircle.diameter.formatted())")
            //label area
            Text("area is \(CurrentCircle.area.formatted())")
            //label curcumference
            Text("curcumference is \(CurrentCircle.circumference.formatted())")
        }
    
    }
}

#Preview {
    CircleView()
}
