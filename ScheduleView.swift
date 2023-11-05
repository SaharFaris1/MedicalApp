//
//  ScheduleView.swift
//  MedicalApp
//
//  Created by Nasser Faris on 19/04/1445 AH.
//

import SwiftUI

struct ScheduleView: View {
    @Binding var preselectedIndex: Int
    var options: [String]
    var body: some View {
        VStack{
            HStack{
                Text("Schedule").bold().font(.title)
                Spacer()
                Image(systemName: "bell")
            }
            
            HStack(spacing: 0) {
                ForEach(options.indices, id: \.self) { index in
                    ZStack {
                        Rectangle()
                            .fill(Color.gr1.opacity(0.1))
                        
                        Rectangle()
                            .fill(Color.gr1)
                            .cornerRadius(20)
                            .padding(2)
                            .opacity(preselectedIndex == index ? 1 : 0.01)
                            .onTapGesture {
                                withAnimation(.interactiveSpring()) {
                                    preselectedIndex = index
                                }
                            }
                    }
                    .overlay(
                        Text(options[index])
                    )
                }
            }
            .frame(height: 60)
            .cornerRadius(10)
            
            ZStack{
                RoundedRectangle(cornerRadius: 20).stroke(Color.gr2, lineWidth: 3)
                    .frame(width: 350, height: 200)
                VStack{
                    
                    HStack{
                        VStack{
                            Text("Dr. Marcus Horizon").bold()
                            Text("Chardiologist")
                                .font(.caption).foregroundColor(.gray)
                                .padding(.trailing, 70)
                        }
                        .padding(.trailing, 100)
                        Image("ImgDr").resizable().scaledToFit().frame(width: 60, height: 70)
                        .clipShape(Circle())}
                    HStack{
                        Image(systemName: "calendar")
                        Text("26/06/2022")
                        Image(systemName: "clock")
                        Text("10:30 AM")
                        Text("•").foregroundColor(.grr1) + Text("Confirm")
                    }.font(.callout).foregroundColor(.gray1)
                    HStack{
                        Button(action: {}, label: {
                            Text("Cancel")
                            
                                .font(.headline)
                                .foregroundColor(.gray1)
                                .padding()
                                .frame(width: 150, height: 50)
                                .background(Color.gr2)
                                .cornerRadius(10)
                            
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Reschedule")
                            
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 150, height: 50)
                                .background(Color.gr1)
                                .cornerRadius(10)
                            
                        })
                    }
                }
            }.padding()
            ZStack{
                RoundedRectangle(cornerRadius: 20).stroke(Color.gr2, lineWidth: 3)
                    .frame(width: 350, height: 200)
                VStack{
                    
                    HStack{
                        VStack{
                            Text("Dr. Marcus Horizon").bold()
                            Text("Chardiologist")
                                .font(.caption).foregroundColor(.gray)
                                .padding(.trailing, 70)
                        }
                        .padding(.trailing, 100)
                        Image("ImgDr").resizable().scaledToFit().frame(width: 60, height: 70)
                        .clipShape(Circle())}
                    HStack{
                        Image(systemName: "calendar")
                        Text("28/06/2022")
                        Image(systemName: "clock")
                        Text("2:00 PM")
                        Text("•").foregroundColor(.grr1) + Text("Confirm")
                    }.font(.callout).foregroundColor(.gray1)
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Cancel")
                            
                                .font(.headline)
                                .foregroundColor(.gray1)
                                .padding()
                                .frame(width: 150, height: 50)
                                .background(Color.gr2)
                                .cornerRadius(10)
                            
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Reschedule")
                            
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 150, height: 50)
                                .background(Color.gr1)
                                .cornerRadius(10)
                            
                        })
                    }
                }}
        }.padding()
    }}
struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView(preselectedIndex: .constant(0), options: ["Upcoming", "Completed", "Canceled"])
    }
}
