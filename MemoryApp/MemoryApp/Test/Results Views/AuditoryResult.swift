//
//  VisuallyResult.swift
//  Memory
//
//  Created by Bruno De Vivo on 21/10/22.
//
import SwiftUI

struct AuditoryResult: Result {
    var memoryType: String = "AUDITORY"
    var memoryImage: String = "ear"
    var description: String = "Auditory memory consists in the ability to memorize sounds, dialogues and more generally vocabulary and words. \n\nAnd above all to memorize through sound, its listening and its reproduction, creating mental images related to the perception of sounds and words."
    
    let subTitle:String = "Your Memory Type is:"
    
    var body: some View {
        
        VStack{
            Spacer()
            
            Text(subTitle)
                .font(.headline)
                .multilineTextAlignment(.center)

            
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
            
            HStack{
                Spacer()
                
                VStack{
                    Button {} label: {
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
                    Button {} label: {
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
        .padding(.horizontal)
    }
}

struct AuditoryResult_Previews: PreviewProvider {
    static var previews: some View {
        AuditoryResult()
    }
}
