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
                Circle()
                    .frame(width:geo.size.width*3, height: geo.size.height*2)
                    .foregroundColor(.red)
                imageView()
                    .frame(width : geo.size.width*1,height:  geo.size.height*0.4)
                Text("Ekin Can Bacik")
                    .font(.title)
                    .bold()
                    .frame(width:geo.size.width*1, height: geo.size.height*1)
                Spacer()
                Text("Github")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: geo.size.width*0.4, height: geo.size.height*1.2)
                    .background(RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(.black)
                                    .frame(width:geo.size.width*0.3,height: geo.size.height*0.1))
                
                Text("Instagram")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: geo.size.width*1.5, height: geo.size.height*1.2)
                    .background(RoundedRectangle(cornerRadius: 20)
                                    .fill(LinearGradient(gradient: Gradient(colors: [.orange,Color("rectanglesColor")]), startPoint: .topTrailing, endPoint: .bottomTrailing))
                                    .frame(width:geo.size.width*0.4,height: geo.size.height*0.1))
                Text("Instagram")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: geo.size.width*0.5, height: geo.size.height*1.7)
                    .background(RoundedRectangle(cornerRadius: 20)
                                    .fill(LinearGradient(gradient: Gradient(colors: [.orange,Color("rectanglesColor")]), startPoint: .topTrailing, endPoint: .bottomTrailing))
                                    .frame(width:geo.size.width*0.4,height: geo.size.height*0.1))
                    Spacer()
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
            .overlay(Circle().stroke(Color("overlayColor") , lineWidth: 4))
    }
}

struct gitIcon : View {
    var body: some View{
        GeometryReader{pos in
            Image("git")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 200)
            Text("Github")
                .font(.title)
                .bold()
                .frame(width: pos.size.width*0.8, height: pos.size.height*0.2)
                Spacer()
            Text("https://github.com/EkoB4")
                .bold()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.black)
                                .frame(width: pos.size.width*0.55, height: pos.size.height/30))
                .frame(width: pos.size.width*1.1, height: pos.size.height*0.34)
            /*Text("EkoB4")
                    .font(.subheadline)
                    .bold()
                    .frame(width: pos.size.width*0.7, height: pos.size.height*0.4)*/
        }
    }
}

struct socilas: PreviewProvider{
    static var previews: some View {
        gitIcon().previewLayout(.sizeThatFits)
    }
}
