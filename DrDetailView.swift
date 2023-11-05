//
//  DrDetailView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 18/04/1445 AH.
//

import SwiftUI

struct DrDetailView: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "chevron.backward")
                Text("Doctor Detail").bold().font(.title2)
                Image(systemName: "ellipsis")
            }
                HStack{
                    Image("img2")
                        .resizable()
                        .frame(width: 100, height: 150)
                        .frame(maxWidth: .infinity)
                      
                       
                    VStack{
                        Text("Dr.Marcus Horizon").bold().font(.title3)
                        Text("Chardiologisr").foregroundColor(.gray)
                      
                        
                        ZStack {
                            Rectangle()
                                .fill(Color.gr2)
                                .frame(width: 60, height: 30)
                            
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.gr1)
                                Text("4.7")
                            }
                        }
                        HStack{
                            Image(systemName: "mappin")
                            Text("800m away")
                        }.foregroundColor(.gray)
                      
                    }} .padding(.trailing, 100)
            Text("About").bold()
                .font(.title).padding(.trailing, 250)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...").foregroundColor(.gray) + Text("Read more").foregroundColor(.gr1)
                
                
            DateView()
            DateTimeView()
        }.padding(.horizontal)
        
    }
}
#Preview {
    DrDetailView()
}
