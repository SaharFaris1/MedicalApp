
import SwiftUI

struct DrsView: View {
    @State private var name: String = ""
    var body: some View {
    
            ZStack{Color.gray.opacity(0.1)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Text("Find your desire healt Solution")
                            .bold()
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "bell")
                    }.padding()
                    ScrollView{
                        HStack{
                            Image(systemName: "magnifyingglass")
                            TextField("Search doctors, drugs,...", text: $name)
                        }.padding(.horizontal)
                            .foregroundColor(.black)
                            .font(.title3)
                            .frame(width: 360,height: 60)
                            .background(RoundedRectangle(cornerRadius: 25, style: .continuous).fill(.gray.opacity(0.1)))
                            .padding()
                        SectionView()
                        ZStack{
                            RoundedRectangle(cornerRadius: 20).fill(Color.gr2)
                                .frame(width: 350, height: 200)
                            VStack{
                                Text("Early protection for")
                                    .bold()
                                    .font(.title2)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                HStack{
                                    Text("your family health")
                                        .bold()
                                        .font(.title2)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Image(systemName: "img2")
                                }
                                ZStack{
                                    RoundedRectangle(cornerRadius: 40)
                                        .fill(Color.gr1)
                                        .frame(width: 140, height: 50)
                                    Text("Learn more").foregroundColor(.white).bold()
                                    
                                    
                                } .padding(.trailing, 180)
                            }.padding(.leading, 50)
                            
                        }
                        HStack{
                            Text("Top Doctor")
                                .bold()
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("See all").font(.title3)
                                .foregroundColor(.gr1)
                        }.padding()
                        DoctView()
                        Text("Health article")
                            .bold()
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                    }}
            }
    }
}

#Preview {
    DrsView()
}
