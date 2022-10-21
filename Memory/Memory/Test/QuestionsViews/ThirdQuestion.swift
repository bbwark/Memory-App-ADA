//
//  FirstQuestion.swift
//  Memory
//
//  Created by Bruno De Vivo on 21/10/22.
//
import SwiftUI

struct ThirdQuestion: Question {
    
    var questionSentence: String = "When you repeat you usually..."
    var answer1: String = "Browse the book or notes"
    var answer2: String = "Walking"
    var answer3: String = "Write what you repeat"
    var answer4: String = "Speak aloud"
    
    var body: some View {
        
        VStack{
            Spacer()
            
            Text(questionSentence)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
            
            HStack{
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color(hex: "00D4D2"))
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color(hex: "00D4D2"))
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color(hex: "00D4D2"))
                Rectangle()
                    .frame(width: 40.0, height: 3.0)
                    .foregroundColor(Color(hex: "D45A15"))
            }
            .padding(.bottom)
            
            VStack{
                
                Button {
                } label: {
                    //Answer 1
                    ZStack{
                        Rectangle()
                            .frame(width: 300.0, height: 70.0)
                            .foregroundColor(Color(hex: "EDEDED"))
                            .cornerRadius(10)
                            .shadow(radius: 6.0)
                        Text(answer1)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .frame(width: 250.0, height: 50.0)
                    }
                }
                .padding(.bottom)
                
                
                Button {
                } label: {
                    //Answer 2
                    ZStack{
                        Rectangle()
                            .frame(width: 300.0, height: 70.0)
                            .foregroundColor(Color(hex: "EDEDED"))
                            .cornerRadius(10)
                            .shadow(radius: 6.0)
                        Text(answer2)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .frame(width: 250.0, height: 50.0)
                    }
                }
                .padding(.bottom)
                
                
                Button {
                } label: {
                    //Answer 3
                    ZStack{
                        Rectangle()
                            .frame(width: 300.0, height: 70.0)
                            .foregroundColor(Color(hex: "EDEDED"))
                            .cornerRadius(10)
                            .shadow(radius: 6.0)
                        Text(answer3)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .frame(width: 250.0, height: 50.0)
                    }
                }
                .padding(.bottom)
                
                
                Button {
                } label: {
                    //Answer 4
                    ZStack{
                        Rectangle()
                            .frame(width: 300.0, height: 70.0)
                            .foregroundColor(Color(hex: "EDEDED"))
                            .cornerRadius(10)
                            .shadow(radius: 6.0)
                        Text(answer4)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .frame(width: 250.0, height: 50.0)
                    }
                }
                
            }
            Spacer()
        }
    }
}


struct ThirdQuestion_Previews: PreviewProvider {
    static var previews: some View {
        ThirdQuestion()
    }
}
