//
//  taskview.swift
//  taskManager
//
//  Created by Thomas Gusewelle on 2/26/23.
//

import SwiftUI

struct taskview: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                VStack(alignment: .leading, spacing: 8){
                    Text("Welcome Back")
                    Text("Here are your tasks").font(.title.bold())
                }.frame(maxWidth: .infinity, alignment: .leading)
                
            }.padding()
            
        }.overlay(alignment: .bottom){
            
            NavigationLink(destination: AddTask()){
                Label("Add a task", systemImage: "plus.app.fill")
                    .font(.callout).foregroundColor(.white)
                    .padding(16)
                    .background{
                        Capsule()
                            .fill(Color(UIColor.black))
                            .shadow(color: .black, radius: 0.5, x: 0.5, y: 0.4)
                    }
            }
        }
        
    }
    
    func test() -> Void {
        
    }
    
}

struct taskview_Previews: PreviewProvider {
    static var previews: some View {
        taskview()
    }
}


//
//struct TaskDashboardView: View {
//
//    @StateObject var viewModel: TaskDashboardViewModel = .init()
//
//    // MARK: Matched Geometry Namespace
//    @Namespace var animation: Namespace.ID
//
//    var body: some View {
//        ScrollView(.vertical, showsIndicators: false) {
//            VStack {
//                VStack(alignment: .leading, spacing: 8) {
//                    Text("Welcome Back")
//                        .font(.callout)
//
//                    Text("Here's Update Today")
//                        .font(.title2.bold())
//                }
//                .frame(maxWidth: .infinity, alignment: .leading)
//
//                CustomSegmentedBar(delegate: viewModel, animation: animation)
//                    .padding(.top, 5)
//
//                // MARK: Task View
//                if let currentTab = CustomSegmentedBarType(rawValue: viewModel.currentTab.title) {
//                    TaskView(currentTab: currentTab, viewModel: viewModel)
//                }
//
//                NavigationLink(
//                    destination:
//                        AddNewTaskView(editTask: viewModel.editTask)
//                        .navigationBarHidden(true),
//                    isActive: $viewModel.openEditTask,
//                    label: {}
//                )
//                .onAppear {
//                    viewModel.editTask = nil
//                }
//            }
//            .padding()
//        }
//        .overlay(alignment: .bottom) {
//
//            // MARK: Add Button
//            Button {
//                viewModel.openEditTask = true
//            } label: {
//                Label {
//                    Text("Add Task")
//                } icon: {
//                    Image(systemName: "plus.app.fill")
//
//                }
//                .font(.title3.bold())
//                .foregroundColor(.white)
//                .padding(.vertical, 12)
//                .padding(.horizontal, 20)
//                .shadow(color: .black, radius: 0.5, x: 0.8, y: 0.5)
//                .background {
//                    Capsule()
//                        .fill(Color("CustomSegmentedBarBackground"))
//                        .shadow(color: Color(UIColor.label), radius: 0.9, x: 0.5, y: 0.5)
//
//                }
//            }
//            .padding(.top, 10)
//            .frame(maxWidth: .infinity)
//            // MARK: Linear Gradient BG
//            .background{
//                LinearGradient(
//                    colors: [
//                        Color(UIColor.systemGray5).opacity(0.05),
//                        Color(UIColor.systemGray5).opacity(0.1),
//                        Color(UIColor.systemGray5).opacity(0.4),
//                        Color(UIColor.systemGray5).opacity(0.7),
//                        Color(UIColor.systemGray5)
//                    ],
//                    startPoint: .top,
//                    endPoint: .bottom
//                )
//                .ignoresSafeArea()
//            }
//        }
//    }
//}
//
//struct TaskDashboardView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            TaskDashboardView()
//                .navigationTitle("Task Manager")
//                .navigationBarTitleDisplayMode(.inline)
//        }
//        .navigationViewStyle(.stack)
////        .preferredColorScheme(.dark)
//    }
//}

