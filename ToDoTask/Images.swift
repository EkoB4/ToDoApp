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
                .frame(width: 280, height: 70)
                .foregroundColor(Color.gray).opacity(0.2)
                .cornerRadius(20)
             
        Image("github-logo")
                .resizable()
                .clipped()
                .scaledToFit()
                .frame(height: 60).offset(x: -100, y: -75)
            Link(destination: URL(string:"https://github.com/EkoB4")!) {
                Text("GitHub")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                    .offset(y:-130)
            }
        }
    }
}

struct InstagramImageView : View {
    var body: some View{
        VStack{
            Rectangle()
                .frame(width:280, height: 70)
                .foregroundColor(Color.gray.opacity(0.2))
                .opacity(0.8)
                .cornerRadius(20)
        Image("instagram")
                .resizable()
                .clipped()
                .scaledToFit()
                .frame(height: 60).offset(x: -100, y: -75)
            Link(destination: URL(string:"https://github.com/EkoB4")!) {
                Text("Instagram")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                    .offset(x:30,y:-135)
            }
        }
    }
    }


struct MailImageView : View {
    var body : some View{
        VStack{
            Rectangle()
                .frame(width: 280, height: 70)
                .foregroundColor(Color.gray.opacity(0.2)).opacity(0.8)
                .cornerRadius(20)
        Image("mail")
                .resizable()
                .clipped()
                .scaledToFit()
                .frame(height: 60).offset(x: -100, y: -75)
            Link(destination: URL(string:"https://github.com/EkoB4")!) {
                Text("Gmail")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                    .offset(x:-5,y:-130)
            }
        }
    }
}

struct ProfileImageView :View{
    var body: some View{
        Image("ProfileImage")
            .resizable()
            .clipped()
            .scaledToFit()
            .frame(width:200,height:200)
            .clipShape(RoundedRectangle(cornerRadius: 60))
            .overlay(RoundedRectangle(cornerRadius: 60).stroke(.gray.opacity(0.5),lineWidth: 3))
    }
}
struct imageView_Previews : PreviewProvider{
    static var previews: some View{
        ProfileImageView().previewLayout(.sizeThatFits)
        GitImageView().previewLayout(.sizeThatFits)
        InstagramImageView().previewLayout(.sizeThatFits)
        MailImageView().previewLayout(.sizeThatFits)
    }
}
