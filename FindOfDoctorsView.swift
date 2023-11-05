//
//  FindOfDoctorsView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 21/04/1445 AH.
//

import SwiftUI

struct FindOfDoctorsView: View {
    @State private var name: String = ""
    var body: some View {
        ZStack{Color.white
                .ignoresSafeArea()
            VStack{
                
                    HStack{
                        Image(systemName: "chevron.left")
                        Text("Find Doctors")
                            .bold()
                            .font(.title)
                            .padding(.leading, 80)
                        Spacer()
                        Image(systemName: "ellipsis")
                        
                    }.padding()
                ScrollView{
                    HStack{
                        Image(systemName: "magnifyingglass")
                        TextField("Find a doctor", text: $name)
                    }.padding()
                    
                    
                    FindDocView()
                        .padding(.horizontal)
                    Text("Recommented Doctors")
                        .bold()
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)                    .stroke(Color.gr2, lineWidth: 5)
                            .frame(width: 350, height: 200)
                        HStack{
                            Image("img11")
                                .resizable()
                                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            VStack{
                                Text("Dr.Marcus Horizon").bold().font(.title3)
                                Text("Chardiologisr").foregroundColor(.gray)
                                Divider() .frame(width: 150)
                                HStack{
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
                                    Image(systemName: "mappin")
                                    Text("800m away")
                                }}}}
                    Text("Your Recent Doctors")
                        .bold()
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    RecentDocView()
                }
                
            }}}}

#Preview {
    FindOfDoctorsView()
}
