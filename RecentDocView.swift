//
//  RecentDocView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 21/04/1445 AH.
//

import SwiftUI

struct RecentDocView: View {
    @State var recentDr: [RecentDr] = [
        RecentDr(imageNam: "img11", drsName: "Dr.Marcus"),
        RecentDr(imageNam: "img22", drsName: "Dr.Maria"),
        RecentDr(imageNam: "img22", drsName: "Dr.Stevi"),
        RecentDr(imageNam: "img33", drsName: "Dr.Luke"),
    ]
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                ForEach(recentDr) { rec in
                    RecentDr(imageNam: rec.imageNam, drsName: rec.drsName)
                }
                
            }}
    }
}

#Preview {
    RecentDocView()
}
struct RecentDr: View, Identifiable {
    var id = UUID()
    var imageNam: String
    var drsName: String
    
    var body: some View {
        HStack{
            VStack {
                Image(imageNam)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Text(drsName)
                  
                    .font(.subheadline)
            }.padding()
        }
    }}
