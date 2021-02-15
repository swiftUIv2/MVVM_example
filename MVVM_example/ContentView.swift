//
//  ContentView.swift
//  MVVM_example
//
//  Created by emm on 15/02/2021.
//

import SwiftUI


// Views
struct ContentView: View {
    
//    let alice = Person(name: "Alice", birthday: Date())
    @StateObject var viewModel: ContentViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.name)
                .padding()
            
            Text("\(viewModel.age)")
                .padding()
            
            
            Button("Change name"){
                // Change the name to bob
                viewModel.changeName("bob")
            }
            
            
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel())
    }
}
