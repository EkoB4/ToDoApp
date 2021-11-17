//
//  imageAddButton.swift
//  ToDoTask
//
//  Created by VB on 16.11.2021.
//
/*
import Foundation
import SwiftUI

struct imageAdd : View {
    @State var savePhoto : Bool = false
    @State var imagePicker :Bool = false
    @State var sourceType:UIImagePickerController.SourceType = .camera
    @State var image : UIImage?
    var body: some View{
        VStack{
            Button("Choose Picture"){
                self.savePhoto = true
            }.padding()
                .actionSheet(isPresented: $savePhoto){
                    ActionSheet(title: Text("choosePhoto"),
                                message: Text("Choose"),buttons: [.default(Text("Photo Libary")){
                        self.imagePicker = true
                        self.sourceType = .photoLibrary
                    },.default(Text("Camera")){
                        self.imagePicker = true
                        self.sourceType = .camera
                    },.cancel()])
                }.sheet(isPresented: $imagePicker){
                    Text("modal")
                }
        }
}

struct imageAdd_Previews:PreviewProvider {
    static var previews: some View{
        NavigationView{
        imageAdd()
        }
    }
  }
}
*/
