//
//  AddTask.swift
//  taskManager
//
//  Created by Thomas Gusewelle on 2/26/23.
//

import SwiftUI

struct AddTask: View {
    @Environment(\.self) var env
    
    @State private var name: String = "";
    @State private var dueDate: Date = Date()
    @State private var isDateOpen: Bool = false
    @State private var taskType: String = "Basic"
    var body: some View {
        GeometryReader { geomtry in
            ScrollView(){
                VStack(alignment: .leading){
                    Text("Task Name").font(.caption).foregroundColor(.gray)
                    TextField("Enter Name", text: $name)
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                Divider().padding(.top, 12)
                
                VStack(alignment: .leading, spacing: 8){
                    Text("Due Date").font(.caption).foregroundColor(.gray)
                    //                DatePicker("Due Date", selection: $dueDate, in: Date.now...Date.distantFuture).labelsHidden().datePickerStyle(.wheel)
                    HStack(){
                        Text(dueDate.formatted(date: .abbreviated, time: .omitted))
                        
                        
                        Button(action: {isDateOpen = !isDateOpen}, label: {Image(systemName: "calendar").foregroundColor(.black)}).frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    
                    if (isDateOpen == true){
                        Divider()
                        DatePicker("Due Date", selection: $dueDate, in: Date.now...Date.distantFuture).labelsHidden().datePickerStyle(.graphical)
                    }
                    
                    
                }.frame(maxWidth: .infinity, alignment: .leading).padding(.top, 12).onTapGesture {
                    isDateOpen = !isDateOpen
                }.animation(.easeInOut, value: isDateOpen)

                
                Divider().padding(.top, 12)
                
                VStack(alignment: .leading){
                    Text("Task Type").font(.caption).foregroundColor(.gray)
                    let types: [String] = ["Basic", "Urgent", "Important"]
                    HStack(){
                        ForEach(types, id: \.self){ type in
                            Button(type, action: {taskType = type}).foregroundColor(taskType == type ? .white : .black).padding(.vertical, 8).frame(maxWidth: .infinity).background(){
                                if (taskType == type){
                                    Capsule().fill(.black)
                                } else {
                                    Capsule().strokeBorder(.black)
                                }
                                
                            }
                            
                        }
                    }.padding(.top, 4)
                   
                    
                }.frame(maxWidth: .infinity, alignment: .leading).padding(.top, 12)
                
            }.padding()
                .overlay(alignment: .bottom){
                    Button(action: test){
                        Text("Save Task")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 8)
                            .background(){
                                Capsule().fill(Color(.black))
                            }
                    }.padding(.horizontal, 50)
                    
                }
                .navigationTitle("Add Task")
                .navigationBarBackButtonHidden(true)
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Button(action: {env.dismiss()}){
                            Image(systemName: "arrow.backward").foregroundColor(.black)
                        }
                    }
                    
                    
                }
        }
    }
        
}

func test() -> Void{
    
}

struct AddTask_Previews: PreviewProvider {
    static var previews: some View {
        AddTask().navigationTitle("Add Task")
            .navigationBarBackButtonHidden(true)
            
    }
}
