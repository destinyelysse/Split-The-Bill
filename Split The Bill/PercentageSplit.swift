//
//  PercentageSplit.swift
//  Split The Bill
//
//  Created by Destiny Serna on 10/21/20.
//

import SwiftUI

struct PercentageSplit: View {
    
    @State private var checkAmount = ""
    @State private var tip = ""
    
    @State private var payees = [
    ["Person 1", "0", "0"],
    ["Person 2", "0", "0"]
    ]
    
    var totalBill = "100"
    var remainingBill = "10"
    
    var body: some View {
        Form {
            Section(header: Text("Enter bill, tip, and additional fees")) {
                TextField("Check Amount", text: $checkAmount)
                    .keyboardType(.decimalPad)
                TextField("Tip", text: $tip)
                    .keyboardType(.decimalPad)
                Text("+")
            }
            
            Section(header: Text("Total Bill and Remaining amount to split")) {
                    HStack {
                        Text(totalBill)
                        Spacer()
                        Text(remainingBill)
                }
            }
 
            Section {
                HStack {
                    Text("Person 1")
                    Spacer()
                    Text("%")
                    Spacer()
                    Text("Amount")
                }
                HStack {
                    Text("Person 2")
                    Spacer()
                    Text("%")
                    Spacer()
                    Text("Amount")
                }
                Text("+")
            }
            
        }
        .navigationBarTitle("Percentage Split")
    }
}

struct PercentageSplit_Previews: PreviewProvider {
    static var previews: some View {
        PercentageSplit()
    }
}
