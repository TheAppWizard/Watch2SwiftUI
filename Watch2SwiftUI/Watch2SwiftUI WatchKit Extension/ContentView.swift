//
//  ContentView.swift
//  Watch2SwiftUI WatchKit Extension
//
//  Created by Shreyas Vilaschandra Bhike on 17/04/21.
//
// The App Wizard
// Instagram : theappwizard2408





import SwiftUI

struct ContentView: View {
    var body: some View {
        WatchFace()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//






























struct WatchFace: View {
    var body: some View {
        
        ZStack{
        WatchUI()
            .offset(x: 0, y: 10.0)
            
           
            
            
        }
    }
}














struct WatchUI: View {
    
    @State private var bordergreen = false
    @State private var handgreen = false
         
        
    
    var body: some View {
        ZStack{
           
            Circle()
                .trim( from: 0.2, to: bordergreen  ?  0.7 :  0.2)
                .stroke(Color.green,style: StrokeStyle(lineWidth: 5, lineCap: .round))
                .frame(width: 172, height: 172, alignment: .center)
                .rotationEffect(.degrees(198))
                .animation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: false))
                        .onAppear() {
                        self.bordergreen.toggle()
                        }
            
                   
                            
        
            Circle()
                .trim( from: 0.2, to: 0.5)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 5, lineCap: .round))
                .frame(width: 155, height: 155, alignment: .center)
                .rotationEffect(.degrees(198))
               
                
            
            Circle()
                .trim( from: 0.2, to: 0.9)
                .stroke(Color.red, style: StrokeStyle(lineWidth: 5, lineCap: .round))
                .frame(width: 138, height: 138, alignment: .center)
                .rotationEffect(.degrees(198))
            
            Circle()
                .trim( from: 0.2, to: 0.4)
                .stroke(Color.gray, lineWidth: 25).opacity(0.1)
                .frame(width: 138, height: 138, alignment: .center)
                .rotationEffect(.degrees(-250))
              
            
            
            
            RoundedRectangle(cornerRadius: 45)
                .frame(width: 3, height: 40, alignment: .center)
                .offset(x: 0, y: 25)
                .foregroundColor(.red)
                .rotationEffect(.degrees(75))
                .shadow(color: .red, radius: 10, x: 0.0, y: 0.0)
            
            
            RoundedRectangle(cornerRadius: 45)
                .frame(width: 3, height: 50, alignment: .center)
                .offset(x: 0, y: 29)
                .foregroundColor(.blue)
                .rotationEffect(.degrees(-75))
                .shadow(color: .blue, radius: 10, x: 0.0, y: 0.0)
            
            RoundedRectangle(cornerRadius: 45)
                .frame(width: 3, height: 55, alignment: .center)
                .offset(x: 0, y: 28)
                .foregroundColor(.green)
                .rotationEffect(.degrees(handgreen ? 0 :-180))
                .shadow(color: .green, radius: 10, x: 0.0, y: 0.0)
                .animation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: false))
                        .onAppear() {
                        self.handgreen.toggle()
                        }
            
            Circle()
                .frame(width: 15, height: 15, alignment: .center)
            
            Circle()
                .frame(width: 12, height: 12, alignment: .center)
                .foregroundColor(.green)
            
        }
    }
}
//
