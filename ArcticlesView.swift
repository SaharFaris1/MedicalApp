
import SwiftUI

struct ArcticlesView: View {
    @State private var name: String = ""
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.backward")
                    .padding(.trailing, 80)
                Text("Arcticles").bold() .padding(.trailing, 70)
                Image(systemName: "ellipsis").padding(.leading, 60)
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 25.0).fill(.white).stroke(Color.gr2, lineWidth: 2)
                    .frame(width: 350, height: 50)
                HStack {
                    Image(systemName: "magnifyingglass").padding()
                    TextField("Search articles, news ...", text: $name)
                }.padding(.horizontal)
            }
            HStack{
                Text("Popular Articles").bold().padding()
                Spacer()
                Button {
                } label: {
                    Text("See all").foregroundColor(.gr1)
                }
                .padding()
            }
            ScrollView(.horizontal){
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 15).fill(.gr1)
                            .frame(width: 130, height: 60)
                        Text("Cobid-19").foregroundColor(.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 15).fill(.gr1)
                            .frame(width: 130, height: 60)
                        Text("Diet").foregroundColor(.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 15).fill(.gr1)
                            .frame(width: 130, height: 60)
                        Text("Fitness").foregroundColor(.white)
                    }
                }}
                
            HStack{
                Text("Trending Articles").bold().padding()
                Spacer()
                Button {
                } label: {
                    Text("See all").foregroundColor(.gr1)
                }}.padding(.horizontal)
            
            ScrollView(.horizontal){
                HStack (spacing: 20){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).fill(.white).stroke(Color.gr2, lineWidth: 2).frame(width: 150, height: 220)
                        VStack{
                            Image("imgcv").resizable().scaledToFit().frame(width: 140).cornerRadius(10)
                            Text("Covid-10").font(.caption).foregroundColor(.gr1)
                                .background(Color.gr2).padding(.trailing, 40)
                            Text("Comparing the").font(.caption).bold().padding(.trailing, 40)
                            Text(" AstraZeneca and").font(.caption).bold().padding(.trailing, 30)
                            
                            Text("Sinovac COVID-19").font(.caption).bold().padding(.trailing, 20)
                            
                            Text("Vaccines").font(.caption).bold().padding(.trailing, 60)
                            HStack{
                                Text("Jun 12,2022.").font(.caption).foregroundColor(.gray)
                                Text("6 min read").font(.caption).foregroundColor(.gr1)
                            }
                        }
                        
                        
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).fill(.white).stroke(Color.gr2, lineWidth: 2).frame(width: 150, height: 220)
                        VStack{
                            Image("imgcv3").resizable().scaledToFit().frame(width: 140, height: 120).cornerRadius(10)
                            Text("Covid-10").font(.caption).foregroundColor(.gr1)
                                .background(Color.gr2).padding(.trailing, 50)
                            Text("The Horror Of The ").font(.caption).bold().padding(.trailing, 35)
                            Text(" Second Wave Of").font(.caption).bold().padding(.trailing, 45)
                            
                            Text(" COVID-19").font(.caption).bold().padding(.trailing, 70)
                            
                            HStack{
                                Text("Jun 10,2022.").font(.caption).foregroundColor(.gray)
                                Text("5 min read").font(.caption).foregroundColor(.gr1)
                            }
                        }
                        
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).fill(.white).stroke(Color.gr2, lineWidth: 2).frame(width: 150, height: 220)
                        VStack{
                            Image("imgcv2").resizable().scaledToFit().frame(width: 140, height: 90).cornerRadius(10)
                            Text("Covid-10").font(.caption).foregroundColor(.gr1)
                                .background(Color.gr2).padding(.trailing, 40)
                            Text("Comparing the ").font(.caption).bold().padding(.trailing, 40)
                            Text(" AstraZeneca and ").font(.caption).bold().padding(.trailing, 30)
                            
                            Text("Sinovac COVID-19 ").font(.caption).bold().padding(.trailing, 20)
                            
                            Text("Vaccines").font(.caption).bold().padding(.trailing, 60)
                            HStack{
                                Text("Jun 12,2022.").font(.caption).foregroundColor(.gray)
                                Text("6 min read").font(.caption).foregroundColor(.gr1)
                            }}}}}
            HStack{
                Text("Related Articles").bold()
                Spacer()
                Button {
                } label: {
                    Text("See all").foregroundColor(.gr1)
                }}.padding()
            ScrollView{
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0).fill(.white).stroke(Color.gr2, lineWidth: 2)
                        .frame(width: 380, height: 80)
                    HStack{
                        Image("Imgcv4").resizable().scaledToFit()
                            .frame(width: 80).cornerRadius(100)
                        VStack{
                            Text("The 25 Healthiest Fruits You Can Eat, According to a Nutritionist").font(.caption).bold()
                            Text("Jun 9, 2022 • ").font(.caption).foregroundColor(.gray) + Text("8 min read").font(.caption).foregroundColor(.gr1)
                        }.padding(.trailing, 30)
                        Image(systemName: "ellipsis.rectangle.fill").foregroundColor(.gr1).padding(.bottom,50)}}
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0).fill(.white).stroke(Color.gr2, lineWidth: 2)
                        .frame(width: 380, height: 80)
                    HStack{
                        Image("Imgcv5").resizable().scaledToFit()
                            .frame(width: 80, height: 80).cornerRadius(100)
                        VStack{
                            Text("The 25 Healthiest Fruits You Can Eat, According to a Nutritionist").font(.caption).bold()
                            Text("Jun 9, 2022 • ").font(.caption).foregroundColor(.gray) + Text("8 min read").font(.caption).foregroundColor(.gr1)
                        }.padding(.trailing, 30)
                        Image(systemName: "ellipsis.rectangle.fill").foregroundColor(.gr1).padding(.bottom,50)}}
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0).fill(.white).stroke(Color.gr2, lineWidth: 2)
                        .frame(width: 380, height: 80)
                    HStack{
                        Image("Imgcv6").resizable().scaledToFit()
                            .frame(width: 80).cornerRadius(100)
                        VStack{
                            Text("The 25 Healthiest Fruits You Can Eat, According to a Nutritionist").font(.caption).bold()
                            Text("Jun 9, 2022 • ").font(.caption).foregroundColor(.gray) + Text("8 min read").font(.caption).foregroundColor(.gr1)
                        }.padding(.trailing, 30)
                        Image(systemName: "ellipsis.rectangle.fill").foregroundColor(.gr1).padding(.bottom,50)}}
            }}}}
#Preview {
    ArcticlesView()
}
