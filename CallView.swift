//
//  CallView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 19/04/1445 AH.
//

import SwiftUI

struct CallView: View {
    var body: some View {
        VStack{
            ZStack{
                Image("callimg2").resizable().scaledToFill()
                    .ignoresSafeArea()
                Rectangle().fill(.ultraThinMaterial).ignoresSafeArea()
                VStack{
                    Image("callimg")
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    Text("00:05:24").padding(.top, 120)
                        .foregroundColor(.white)
                        .padding(.bottom, 40)
                    HStack{
                        ZStack{
                            Circle().fill(.gray .opacity(0.5))
                                .frame(width: 60)
                            Image(systemName: "video").resizable().scaledToFill()
                                .foregroundColor(.white)
                                .frame(width: 30, height: 3)
                        }.padding(.trailing,30)
                        ZStack{
                            Circle().fill(.red .opacity(0.8))
                                .frame(width: 60)
                            Image(systemName: "phone").resizable().scaledToFill()
                                .foregroundColor(.white)
                            .frame(width: 20, height: 20)}
                        .padding(.trailing,30)
                        
                        ZStack{
                            Circle().fill(.red .opacity(0.8))
                                .frame(width: 60)
                            Image(systemName: "mic").resizable().scaledToFill()
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20)
                                
                        }
                    }
                    
                }.padding()
                Spacer()
                    
                    
                }}}
}
#Preview {
    CallView()
}
