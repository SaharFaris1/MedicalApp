//
//  VideoCallIView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 19/04/1445 AH.
//

import SwiftUI

struct VideoCallIView: View {
    var body: some View {
     
            ZStack{
                LinearGradient(colors: [.black, .white], startPoint: .bottom, endPoint: .center)
                Image("imm1")
                    .resizable()
                    .opacity(0.7)
                    .scaledToFill()
                    .ignoresSafeArea()
            
                Image("imm2").offset(x: 150, y: -300)
                VStack{
                  
                    Text("Dr. Marcus Horizon").foregroundColor(.white).padding(.top, 400)
                    Text("00:05:24").padding(.top)
                        .foregroundColor(.white)
                      
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
            
           
        }
    }
}

#Preview {
    VideoCallIView()
}
