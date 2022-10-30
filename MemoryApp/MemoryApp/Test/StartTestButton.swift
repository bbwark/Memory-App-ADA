//
//  StartTestButton.swift
//  MemoryApp
//
//  Created by Bruno De Vivo on 25/10/22.
//

import SwiftUI

struct StartTestButton: View {
    @State private var fadeButton = false //Animation Variable
    
    var body: some View{
        ZStack(){
            //Effect Circumference
            Circle()
                .stroke(fadeButton ? Color(hex: "00D4D2") : Color(hex: "8415D4"), lineWidth: 4.0)
                .frame(width: 200.0, height: 200.0)
                .blur(radius: 2.0)
                .opacity(fadeButton ? 0.3 : 0.2)
                .scaleEffect(fadeButton ? 0.57 : 1.0)
            
            //Purple Circumference
            Circle()
                .stroke(Color(hex: "8415D4"), lineWidth: 4.0)
                .frame(width: 200.0, height: 200.0)
            ZStack{
                //Cyan Circle
                Circle()
                    .frame(width: 120.0, height: 120.0)
                    .foregroundColor(Color(hex: "00D4D2"))
                    .shadow(radius: 6.0)
                Text("Start")
                    .font(.system(size: 28.0))
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
            }
        }.onAppear{
            DispatchQueue.main.async {            withAnimation(.linear(duration: 2.0).repeatForever(autoreverses: false)){
                fadeButton.toggle()}
            }
        }
    }
    
    struct StartTestButton_Previews: PreviewProvider {
        static var previews: some View {
            StartTestButton()
        }
    }
}
