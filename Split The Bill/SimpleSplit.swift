//
//  ContentView.swift
//  Split The Bill
//
//  Created by Destiny Serna on 10/20/20.
//

import SwiftUI

struct SimpleSplit: View {
    
    // set variables to be updated
    @State private var checkAmount = ""
    @State private var numberOfPeople = ""
    @State private var tipPercentage = 2
    
    let tipPercentages = [0, 10, 15, 18, 20, 22, 25, 30]
    
    var totalBill: Double {
        let tipSelection = Double (tipPercentages[tipPercentage])
        let orderAmount = Double (checkAmount) ?? 0
        let tipValue = orderAmount / 100 * tipSelection
        let totalBill = orderAmount + tipValue
        return totalBill
    }
    
    var totalPerPerson: Double {
        let peopleCount = Int (numberOfPeople) ?? 2
//        let tipSelection = Double (tipPercentages[tipPercentage])
//        let orderAmount = Double(checkAmount) ?? 0
        
//        let tipValue = orderAmount / 100 * tipSelection
//        let totalBill = orderAmount + tipValue
       let totalPerPerson = totalBill / Double (peopleCount)
        return totalPerPerson
    }
    
    // display the view
    var body: some View {
        Form {
            Section {
                TextField ("Check Amount", text: $checkAmount)
                    .keyboardType(.decimalPad)
            }
            Section {
                TextField ("Number of People", text: $numberOfPeople)
                    .keyboardType(.numberPad)
            }
            Section(header: Text("How much of a tip would you like to leave?")) {
                Picker ("Tip Percentage", selection: $tipPercentage) {
                    ForEach(0 ..< tipPercentages.count) {
                        Text("\(self.tipPercentages[$0])%")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            Section (header: Text("Total Bill")) {
                Text("$\(totalBill, specifier: "%.2f")")
            }
            Section (header: Text("Amount per person")) {
                Text("$\(totalPerPerson, specifier: "%.2f")")
            }
        }
        .navigationBarTitle("Simple Split")
    }
}


struct SimpleSplit_Previews: PreviewProvider {
    static var previews: some View {
        SimpleSplit()
    }
}
