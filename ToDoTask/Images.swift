//
//  Images.swift
//  ToDoTask
//
//  Created by VB on 28.11.2021.
//

import Foundation
import SwiftUI

struct GitImageView : View{
    var body: some View{
        VStack{
            Rectangle()
                .frame(width: 360, height: 90)
                .foregroundColor(Color("buttonColor"))
                .cornerRadius(20)
        Image("github-logo")
                .resizable()
                .clipped()
                .scaledToFit()
                .frame(height: 80).offset(x: -140, y: -95)
            Link(destination: URL(string:"https://github.com/EkoB4")!) {
                Text("GitHub/EkoB4")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                    .offset(y:-160)
            }
        }
    }
}

struct InstagramImageView : View {
    var body: some View{
        VStack{
            Rectangle()
                .frame(width:360, height: 90)
                .foregroundColor(Color("buttonColor"))
                .cornerRadius(20)
        Image("instagram")
                .resizable()
                .clipped()
                .scaledToFit()
                .frame(height: 80).offset(x: -130, y: -95)
            Link(destination: URL(string:"https://github.com/EkoB4")!) {
                Text("Instagram/ekinbacik")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                    .offset(x:50,y:-160)
            }
        }
    }
    }


struct MailImageView : View {
    var body : some View{
        VStack{
            Rectangle()
                .frame(width: 360, height: 90)
                .foregroundColor(Color("buttonColor"))
                .cornerRadius(20)
        Image("mail")
                .resizable()
                .clipped()
                .scaledToFit()
                .frame(height: 80).offset(x: -130, y: -95)
            Link(destination: URL(string:"https://github.com/EkoB4")!) {
                Text("Mail")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                    .offset(x:-45,y:-160)
            }
        }
    }
}
struct imageView_Previews : PreviewProvider{
    static var previews: some View{
        GitImageView().previewLayout(.sizeThatFits)
        InstagramImageView().previewLayout(.sizeThatFits)
        MailImageView().previewLayout(.sizeThatFits)
    }
}
