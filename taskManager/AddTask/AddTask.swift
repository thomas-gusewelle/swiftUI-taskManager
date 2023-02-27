//
//  AddTask.swift
//  taskManager
//
//  Created by Thomas Gusewelle on 2/26/23.
//

import SwiftUI

struct AddTask: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
        .navigationTitle("Add Task")
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button(action: {self.presentationMode.wrappedValue.dismiss()}){
                    Image(systemName: "arrow.backward").foregroundColor(.black)
                }
            }
           
            
        }
        
    }
        
}

struct AddTask_Previews: PreviewProvider {
    static var previews: some View {
        AddTask().navigationTitle("Add Task")
    }
}
