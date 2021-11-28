import SwiftUI

struct ProfileTabView : View{
    var body: some View{
        VStack{
            GeometryReader{ pos in
            Rectangle()
                .foregroundColor(Color("BackgroundColor"))
                .frame(width: pos.size.width*1,height: pos.size.height*0.5)//.cornerRadius(20)
                .ignoresSafeArea()
                
                GitImageView()
                    .frame(width: pos.size.width*1, height: pos.size.height*2)
                InstagramImageView()
                    .frame(width: pos.size.width*1, height: pos.size.height*1.7)
                MailImageView()
                    .frame(width: pos.size.width*1, height: pos.size.height*1.4)
            }
        }
    }
}

struct Previews : PreviewProvider {
    static var previews: some View{
        ProfileTabView()
    }
}

