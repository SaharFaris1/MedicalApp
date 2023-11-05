//
//  DoctView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 21/04/1445 AH.
//

import SwiftUI

struct DoctView: View {
    
    @State var drInfo: [TopDoct] = [
        TopDoct(drName: "Dr.Marcus Horizon", major: "Cardiologist", evalu: "4.7", space: "800m away", imgName: "img2"),
        TopDoct(drName: "Dr.Maria Elena", major: "Psychologist", evalu: "4.9", space: "1.5km away", imgName: "img2"),
        TopDoct(drName: "Dr.Stevi Jessi", major: "Orthopedist", evalu: "4.8", space: "2km away", imgName: "img2"),
        TopDoct(drName: "Dr.Gerty Cori", major: "Orthopedist", evalu: "4.7", space: "800m away", imgName: "img2"),
        TopDoct(drName: "Dr.Diandr", major: "Orthopedist", evalu: "4.7", space: "800m away", imgName: "img2"),
    ]
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(drInfo) { dec in
                    TopDoct(drName: dec.drName, major: dec.major, evalu: dec.evalu, space: dec.space, imgName: dec.imgName)
                }
            }
        }
    }
}

struct DoctView_Previews: PreviewProvider {
    static var previews: some View {
        DoctView()
    }
}

struct TopDoct: View, Identifiable {
    var id = UUID()
    var drName: String
    var major: String
    var evalu: String
    var space: String
    var imgName: String
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gr2, lineWidth: 2)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 300)
                   
                VStack {
                    Image( imgName)
                        .resizable()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    Text(drName)
                        .bold()
                        .font(.title3)
                    
                    Text(major)
                        .foregroundColor(.gray)
                    
                    HStack {
                        ZStack {
                            Rectangle()
                                .fill(Color.gr2)
                                .frame(width: 60, height: 30)
                            
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.gr2)
                                
                                Text(evalu)
                            }
                        }
                        .padding(.leading)
                        
                        Image(systemName: "mappin")
                            .foregroundColor(.gray)
                        
                        Text(space)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}
