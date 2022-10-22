//
//  StartTestView.swift
//  Memory
//
//  Created by Bruno De Vivo on 21/10/22.
//
import SwiftUI

struct StartTestView: View {
    @State private var fadeButton = false //Animation Variable
    
    var body: some View {
        VStack{
            Spacer()
            
            Image("brain logo")
                .resizable()
                .frame(width: 143.0, height: 143.0)
                .scaledToFit()
            
            Spacer()
            
            Text("What Memory Type\ndo you have?")
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .padding(.bottom, 30.0)
                        
            ZStack{
                Circle()
                    .stroke(Color(hex: "8415D4"), lineWidth: 4.0)
                    .frame(width: 200.0, height: 200.0)
                    .blur(radius: 1.5)
                
                Button {
                } label: {
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
                        
                        //Effect Circumference
                        Circle()
                            .stroke(Color(hex: "8415D4"), lineWidth: 4.0)
                            .frame(width: 200.0, height: 200.0)
                            .blur(radius: 2.0)
                            .opacity(fadeButton ? 0 : 0.2)
                            .scaleEffect(fadeButton ? 0.57 : 1.0)
                    }
                }.onAppear{
                    withAnimation(.easeInOut(duration: 2.0).repeatForever(autoreverses: false)){
                        fadeButton.toggle()
                    }
                }
            }
            Spacer()
        }
    }
}


struct StartTestView_Previews: PreviewProvider {
    static var previews: some View {
        StartTestView()
    }
}
