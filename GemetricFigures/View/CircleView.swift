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
            
            //label(intro what slide is for)
            Text("Radius")
            //slider control allow user input
            Slider(
                value:$CurrentCircle.radius,
                in: 1...100,
                step: 1.0
            )
            //lable(show current slider value)
            Text("Radius is \(CurrentCircle.radius.formatted())")
        }
    
    }
}

#Preview {
    CircleView()
}
