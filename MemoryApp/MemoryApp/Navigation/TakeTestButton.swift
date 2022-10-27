//
//  TakeTestButton.swift
//  MemoryApp
//
//  Created by Bruno De Vivo on 25/10/22.
//

import SwiftUI

struct TakeTestButton: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 130.0, height: 40.0)
                .foregroundColor(Color.white)
                .cornerRadius(20.0)
                .shadow(radius: 4.0)
            HStack{
                Image(systemName: "doc.text.below.ecg").foregroundColor(Color(hex: "00D4D2"))
                Text("Take Test").foregroundColor(Color(hex: "00D4D2"))
            }
        }
    }
}

struct TakeTestButton_Previews: PreviewProvider {
    static var previews: some View {
        TakeTestButton()
    }
}
