//
//  AddView.swift
//  TodoList
//
//  Created by 강준영 on 2023/05/10.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertText: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type Something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                
                Button(action: saveButtonPressed,label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })

            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖌")
        .alert(isPresented: $showAlert) {
            getAlert()
        }
    }
    
    func saveButtonPressed() {
        if textIsApproperiate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsApproperiate() -> Bool {
        if textFieldText.count < 3 {
            alertText = "Your new todo must be at least 3 characters long"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertText))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                AddView()
            }
            .preferredColorScheme(.dark)
            .environmentObject(ListViewModel())
            
            NavigationView {
                AddView()
            }
            .preferredColorScheme(.light)
            .environmentObject(ListViewModel())
        }
    }
}
