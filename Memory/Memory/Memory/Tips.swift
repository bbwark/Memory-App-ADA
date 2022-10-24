//
//  Tips.swift
//  Memory
//
//  Created by giovanni russo on 17/10/22.
//

import SwiftUI

struct Tips: View {
    @State var selection: Int = 1
    var symbol1 : String = "star"
    var symbol2 : String = ""
 
    

    
    var body: some View {
        VStack{
            
                
                Spacer()
                    //.padding(.trailing, 300.0)
                Button {
                } label: {
                    HStack{
                    Image(systemName: "doc.text.below.ecg")
                    Text("Take Test")
                    }
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .foregroundColor(.cyan)
                .tint(.white)
                .shadow(radius: 5)
                .padding(.leading, 250.0)
                Spacer()

            
            Picker(selection: $selection, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                Text("All Tips").tag(1)
                Text("Favourite Tips").tag(2)
            }
            .frame(width: 380.0, height: 80.0)
            .pickerStyle(.segmented)
            //.padding(.bottom, 10.0)
            Spacer()
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 63){
                    
                    if selection == 1{
                        ForEach(littleTip){num in
                            
                                GeometryReader{ proxy in
                                    let scale = getScale(proxy: proxy)
                                    ZStack(alignment : .bottom){
                                        ZStack{
                                            Image(num.Immagine)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 320, height: 460)
                                                .clipped()
                                                .cornerRadius(20)
                                                .overlay(RoundedRectangle(cornerRadius: 20)
                                                    .stroke(Color(white: 0.4))            )
                                                .shadow(radius: 8)
                                            
                                            RoundedRectangle(cornerRadius: 20.0)
                                                .foregroundColor(.clear)
                                                .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
                                                .frame(width: 320, height: 460, alignment: .center)
                                                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                                .onTapGesture{
                                                    
                                                }
                                            
                                        }
                                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                                        
                                        Text(num.title)
                                            .font(.system(size: 32, weight: .semibold))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(.white)
                                            .padding(.bottom)
                                        
                                     
                                            Button(action: {
                                                littleTip[num.id-1].starred = !littleTip[num.id-1].starred
                                                selection = 2
                                                selection = 1
                                            }) {
                                                

                                                Image(systemName: littleTip[num.id-1].starred == true ? "star.fill" : "star")
                                                      .resizable()
                                                      .frame(width: 40, height: 40)
                                                      .foregroundColor(.yellow)
                                                      .padding(.bottom, 400.0)
                                                      .padding(.leading, 250.0)
                                            }
                                        
                                        
                                    }
                                    
                                    
                                    
                                    
                                    .scaleEffect(.init(width: scale, height: scale))
                                    //                            .animation(.spring(), value: 1)
                                    .animation(.easeOut(duration: 1))
                                    .padding(.vertical)
                                } // end Geometry
                                .frame(width: 230, height: 500)
                                .padding(.horizontal, 32)
                                .padding(.vertical, 48)
                            }
                            Spacer()
                                .frame(width:48)
                        } //End if selection
                    else {
                        ForEach(littleTip){num in
                            if num.starred == true{
                                
                                GeometryReader{ proxy in
                                    let scale = getScale(proxy: proxy)
                                    ZStack(alignment : .bottom){
                                        ZStack{
                                            Image(num.Immagine)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 320, height: 460)
                                                .clipped()
                                                .cornerRadius(20)
                                                .overlay(RoundedRectangle(cornerRadius: 20)
                                                    .stroke(Color(white: 0.4))            )
                                                .shadow(radius: 8)
                                            
                                            RoundedRectangle(cornerRadius: 20.0)
                                                .foregroundColor(.clear)
                                                .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
                                                .frame(width: 320, height: 460, alignment: .center)
                                                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                            
                                        }
                                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                                        
                                        Text(num.title)
                                            .font(.system(size: 32, weight: .semibold))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(.white)
                                            .padding(.bottom)
                            
                                        

                                    }
                                    
                                
                                    .scaleEffect(.init(width: scale, height: scale))
                                    //           .animation(.spring(), value: 1)
                                    .animation(.easeOut(duration: 1))
                                    .padding(.vertical)
                                } // end Geometry
                                .frame(width: 230, height: 500)
                                .padding(.horizontal, 32)
                                .padding(.vertical, 48)
                            }// end controllo if starred
                            EmptyView()
                        } //end for
                        Spacer()
                            .frame(width:48)
                            
                    }//end else
                }//end hstack
                
            }
        }
    }
    
   
    
    func getScale(proxy: GeometryProxy) -> CGFloat{
        let midPoint: CGFloat = 125
        
        let viewFrame = proxy.frame(in: CoordinateSpace.global)
        
        var scale: CGFloat = 1.0
        let deltaXAnimationThreshold: CGFloat = 125
        
        let diffFromCenter = abs(midPoint - viewFrame.origin.x - deltaXAnimationThreshold / 2)
        if diffFromCenter < deltaXAnimationThreshold{
            scale = 1 + (deltaXAnimationThreshold - diffFromCenter) / 500
        }
        
        return scale
    }
}

struct Tips_Previews: PreviewProvider {
    static var previews: some View {
        Tips()
    }
}