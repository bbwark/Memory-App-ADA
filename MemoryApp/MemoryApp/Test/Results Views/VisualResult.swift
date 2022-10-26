//
//  VisuallyResult.swift
//  Memory
//
//  Created by Bruno De Vivo on 21/10/22.
//
import SwiftUI

struct VisualResult: Result {
    var memoryType: String = "VISUAL"
    var memoryImage: String = "eyes"
    var description: String = "Visual (or photographic) memory consists of the ability to create a mental image after seeing a real image or object. \n\nThe mental image replaces the real one and represents the information stored by the brain from which other information can be derived."
    
    let subTitle:String = "Your Memory Type is:"
    @State var pressed = false
    
    var body: some View {
        
        VStack{
            
            Text(subTitle)
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.top, 20.0)

            
            Text(memoryType)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(hex: "BCD40B"))
                .padding(.top)
                    
            Image(systemName: memoryImage)
                .resizable()
                .scaledToFit()
                .foregroundColor(Color(hex: "BCD40B"))
                .frame(width: 100.0, height: 100.0)
            
            Spacer()
            
            Text(description)
                .font(.title3)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            NavigationLink(destination: Navigation(), isActive: $pressed) {EmptyView()}
            
            HStack{
                Spacer()
                
                VStack{
                    Button {
                        pressed.toggle()
                    } label: {
                        ZStack{
                            Circle()
                                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(hex: "8415D4"))
                                .shadow(radius: 6.0)
                            Image(systemName: "gamecontroller")
                                .resizable()
                                .foregroundColor(Color.white)
                                .scaledToFit()
                                .frame(width: 60.0, height: 60.0)
                        }
                    }
                    Text("Games")
                        .foregroundColor(Color(hex: "8415D4"))
                }
                .padding(.trailing)
                
                Spacer()
                
                VStack{
                    Button {
                        pressed.toggle()
                    } label: {
                        ZStack{
                            Circle()
                                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(hex: "00D4D2"))
                                .shadow(radius: 6.0)
                            Image(systemName: "lightbulb")
                                .resizable()
                                .foregroundColor(Color.white)
                                .scaledToFit()
                                .frame(width: 60.0, height: 60.0)
                        }
                    }
                    Text("Tips")
                        .foregroundColor(Color(hex: "00D4D2"))
                }
                .padding(.leading)
                
                Spacer()
            }
            .padding(.bottom)
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Test Result")
        .padding(.horizontal)
    }
}

struct VisualResult_Previews: PreviewProvider {
    static var previews: some View {
        VisualResult()
    }
}
