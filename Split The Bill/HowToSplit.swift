//
//  HowToSplit.swift
//  Split The Bill
//
//  Created by Destiny Serna on 10/21/20.
//

import SwiftUI

struct HowToSplit: View {
    
//    var splitOptions = [
//    ["Simple Split", SimpleSplit()],
//    ["Percentage Split", PercentageSplit()],
//    ["Itemized Split", ItemizedSplit()],
//    ["Custom Split", CustomSplit()]
//    ]
    
    var splitOptions = ["Simple Split", "Percentage Split", "Itemized Split", "Custom Split"]
    
    @State private var selectedSplit = 0
    @State private var totalSplitters = "0"
    
    var body: some View {
        NavigationView {
            Form{
                Text("How many splitters?")
                TextField("How many people?", text: $totalSplitters)
                    .keyboardType(.numberPad)
                Picker("What kind of split?", selection: $selectedSplit) {
                    ForEach(0..<splitOptions.count){
                        Text(self.splitOptions[$0])
                    }
                }
                Text("You chose \(splitOptions[selectedSplit]).")
            }
        .navigationBarTitle("Split The Bill")
        }
    }
}

struct HowToSplit_Previews: PreviewProvider {
    static var previews: some View {
        HowToSplit()
    }
}
