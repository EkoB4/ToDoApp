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
                imageView()
                    .frame(width : geo.size.width*1,height:  geo.size.height*0.6)
                Text("Ekin Can Bacik")
                    .font(.title)
                    .bold()
                    .frame(width:geo.size.width*1, height: geo.size.height*1)
                
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

struct socials : View {
    var body: some View{
        GeometryReader{pos in
            Image("git")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 200)
            Text("Github")
                .font(.title)
                .bold()
                .frame(width: pos.size.width*0.8, height: pos.size.height*0.1)
                Spacer()
            
                Text("EkoB4")
                    .font(.subheadline)
                    .bold()
                    .frame(width: pos.size.width*0.6, height: pos.size.height*0.3)
        }
    }
}

struct socilas: PreviewProvider{
    static var previews: some View {
        socials().previewLayout(.sizeThatFits)
    }
}
