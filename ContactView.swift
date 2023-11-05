
import SwiftUI

struct ContactView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.backward")
                    .padding()
                Text("Dr.Marcus Horixon").font(.title2).bold()
                    .padding(.trailing, 50)
                Image(systemName: "video.fill")
                Image(systemName: "phone.fill")
                Image(systemName: "ellipsis")
            }
            ZStack{
                RoundedRectangle(cornerRadius: 20).stroke(Color.gr2, lineWidth: 3)
                    .frame(width: 330, height: 60)
                VStack{
                    Text("Consulyion Start").foregroundColor(.gr1).bold()
                    Text("You can consult your problem to the doctor").font(.caption).foregroundColor(.gray)
                }}
            HStack{
                Image("ImgDr").resizable().scaledToFit().frame(width: 70, height: 70)
                    .clipShape(Circle())
                VStack{
                    Text("Dr.Marcus Horizon").bold()
                    Text("10 min ago").font(.callout).foregroundColor(.gray)
                } }.padding(.trailing, 150)
            ZStack{
                RoundedRectangle(cornerRadius: 15).fill(.gr3).frame(width: 250, height: 40)
                Text("Hello, How can i help you?").foregroundColor(.gray)
                    .padding(.trailing)
            }.padding(.trailing, 150)
            
            ZStack{
                RoundedRectangle(cornerRadius: 15).fill(.gr1).frame(width: 290, height: 85)
                Text("I have suffering from headache and cold for 3 days, I took 2 tablets of dolo, but still pain").foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Image(systemName: "checkmark").foregroundColor(.white).offset(x: 95, y: 30)
                Image(systemName: "checkmark").foregroundColor(.white).offset(x: 100, y: 30)
            }.padding(.leading, 150)
            HStack{
                Image("ImgDr").resizable().scaledToFit().frame(width: 70, height: 70)
                    .clipShape(Circle())
                VStack{
                    Text("Dr.Marcus Horizon").bold()
                    Text("5 min ago").font(.callout).foregroundColor(.gray)
                } }.padding(.trailing, 150)
            ZStack{
                RoundedRectangle(cornerRadius: 15).fill(.gr3).frame(width: 250, height: 55)
                Text("Ok,Do you have fever? is the headchace severe?").foregroundColor(.gray)
                    .padding(.trailing)
            }.padding(.trailing, 150)
            ZStack{
                RoundedRectangle(cornerRadius: 15).fill(.gr1).frame(width: 250, height: 60)
                Text("I don,t have any fever, but headchace is painful").foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Image(systemName: "checkmark").foregroundColor(.white).offset(x: 95, y: 20)
                Image(systemName: "checkmark").foregroundColor(.white).offset(x: 100, y: 20)
            }.padding(.leading, 150)
            HStack{
                Image("ImgDr").resizable().scaledToFit().frame(width: 70, height: 70)
                    .clipShape(Circle())
                VStack{
                    Text("Dr.Marcus Horizon").bold()
                    Text("Online").font(.callout).foregroundColor(.gray)
                } }.padding(.trailing, 150)
            Image("typingimg").resizable().scaledToFit().frame(width: 100, height: 25).padding(.trailing, 250)
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0).stroke(Color.gr4, lineWidth: 1.0).frame(width: 200, height: 50)
                   
                    HStack{
                        Text("Type message ...")
                        Image(systemName:"paperclip" )
                    }.foregroundColor(.gray)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Send")
                        
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 100, height: 50)
                        .background(Color.gr1)
                        .cornerRadius(30)
                    
                })
            }
        }.padding()
            
        }
    }


#Preview {
    ContactView()
}
