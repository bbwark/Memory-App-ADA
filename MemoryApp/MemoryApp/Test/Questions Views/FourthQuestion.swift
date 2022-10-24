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
                    AnswerButton(textInBox: answer1)
                }
                .padding(.bottom)
                
                
                Button {
                } label: {
                    //Answer 2
                    AnswerButton(textInBox: answer2)
                }
                .padding(.bottom)
                
                
                Button {
                } label: {
                    //Answer 3
                    AnswerButton(textInBox: answer3)
                }
                .padding(.bottom)
                
                Button {
                } label: {
                    //Answer 4
                    AnswerButton(textInBox: answer4)
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
