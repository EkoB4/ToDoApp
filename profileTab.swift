//
//  ContentView.swift
//  ToDoTask
//
//  Created by VB on 13.11.2021.
//

import SwiftUI
struct profileTab : View {
    var body: some View{
        HStack{
            GeometryReader{geo in
                /*Circle()
                    .frame(width:geo.size.width*3, height: geo.size.height*2)
                    .foregroundColor(.red)*/
                Rectangle()
                    .frame(width: geo.size.width*1, height: geo.size.height*0.4)
                    .ignoresSafeArea()
                    .foregroundColor(.clear)
                    .background(Color("firstButtonColor"))
                imageView()
                    .frame(width : geo.size.width*1,height:  geo.size.height*0.5)
                Text("Ekin Can Bacik")
                    .font(.title)
                    .bold()
                    .frame(width:geo.size.width*1, height: geo.size.height*0.85)
                Spacer()
               gitIcon()
                    .offset(x: 42, y: 290)
             }
        }
        }
}
struct profileTab_Previews : PreviewProvider{
    static var previews: some View{
        profileTab().environmentObject(ListViewModel())
    }
}

struct imageView : View {
    var body: some View{
        Image("test")
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(.white,lineWidth: 8))
    }
}

struct gitIcon : View {
    var body: some View{
        VStack{
        GeometryReader{pos in
            Rectangle()
                .frame(width:pos.size.width*0.8, height:pos.size.height*0.1)
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [.white,.black]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(20)
              //  Image("github-logo")
               // .frame(width:pos.size.width*0.3, height: pos.size.height*0.1)
            Image("github-logo")
                .resizable()
                .scaledToFit()
                .frame(width: pos.size.width/8, height: pos.size.height/10)
            Link(destination: URL(string:"https://github.com/EkoB4")!) {
                Text("GitHub")
                    .bold()
                    .font(.title)
                    .frame(width: pos.size.width*0.7, height: pos.size.height*0.1)
                    .foregroundColor(.white)
            }
            Rectangle()
                .frame(width:pos.size.width*0.8, height:pos.size.height*0.1)
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [.purple,.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(20).offset(y:100)
            Text("Instagram")
            .bold()
            .font(.title)
            .foregroundColor(.white)
            .frame(width:pos.size.width*0.4, height: pos.size.height*0.1).offset(y:100)
            Link("ekinbacik",destination: URL(string: "https://www.instagram.com/ekinbacik/")!)
                .font(.title)
                .frame(width:pos.size.width*1.1, height: pos.size.height*0.1)
                .foregroundColor(.white).offset(y:100)
            
            Rectangle()
                .frame(width:pos.size.width*0.8, height:pos.size.height*0.1)
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [.blue,.red,.orange,.yellow,.green]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(20).offset(y:200)
            Text("Gmail")
            .bold()
            .font(.title)
            .foregroundColor(.white)
            .frame(width:pos.size.width*0.3, height: pos.size.height*0.1).offset(y:200)
            Text("ekinbacik@gmail.com")
                .foregroundColor(.white)
                .bold()
                .frame(width:pos.size.width*1.1, height: pos.size.height*0.1)
                .foregroundColor(.white).offset(y:200)
           /* Image("git")
                .resizable()
                .scaledToFit()
                .frame(width: pos.size.width*0.4, height: pos.size.height*0.1)*/
          }
        }
    }
}

struct socilas: PreviewProvider{
    static var previews: some View {
        gitIcon().previewLayout(.sizeThatFits)
    }
}
