//
//  FirstQuestion.swift
//  Memory
//
//  Created by Bruno De Vivo on 21/10/22.
//

import SwiftUI

struct FourthQuestion: Question {
    
    var questionSentence: String = "Receive telephone instructions from a friend on how to use an appliance. What will you do?"
    var answer1: String = "I carry out the various operations at the same time."
    var answer2: String = "I repeat to my friend what he just told me."
    var answer3: String = "I note the various steps"
    var answer4: String = "I repeat in mind"
    
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
                    .foregroundColor(Color(hex: "00D4D2"))
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
            .padding(.bottom, 34.0)
            Spacer()
        }
    }
}


struct FourthQuestion_Previews: PreviewProvider {
    static var previews: some View {
        FourthQuestion()
    }
}
