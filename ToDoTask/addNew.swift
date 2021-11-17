//
//  addNew.swift
//  ToDoTask
//
//  Created by VB on 13.11.2021.
//

import SwiftUI

struct addNewTask: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel : ListViewModel
    @State var userText :String =  ""
                                      
    @State var alertText : String = ""
    @State var showAlert : Bool = false
    var body: some View {
        ScrollView{
            VStack{
            TextField("Add item ", text : $userText)
                .padding()
                .background(Color.gray.opacity(0.3 ))
                .cornerRadius(10)
                .frame(height:50)
                Button(action:saveButtonPressed ,label:{
                    Text("save".uppercased())
                        .foregroundColor(.white)
                        .frame(height:50)
                        .frame(maxWidth:.infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
           }
        }
        .padding(14)
        .navigationBarTitle("Add Task")
        .alert(isPresented: $showAlert, content: alertCome)
    }
    
    func saveButtonPressed(){
        if textApporitate(){
            listViewModel.addItem(title:userText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    func textApporitate() -> Bool{
        if userText.isEmpty{
            alertText="the field cannot be empty"
            showAlert.toggle()
            return false
        }
        /*if userText.count < 3 {
            alertText="the field cannot be empty"
            showAlert.toggle()
            return false
        }*/
        return true
    }
    func alertCome() -> Alert{
        return Alert(title: Text(alertText))
    }
}

struct addNew_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        addNewTask()
        }
        .environmentObject(ListViewModel())
    }
}
