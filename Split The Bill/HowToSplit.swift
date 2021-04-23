//
//  HowToSplit.swift
//  Split The Bill
//
//  Created by Destiny Serna on 10/21/20.
//

import SwiftUI

struct HowToSplit: View {
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Let's split the Bill!")
                Text ("What kind of split?")
                NavigationLink (
                    destination: SimpleSplit()) {
                    Text ("Simple Split")
                }
                NavigationLink (
                    destination: PercentageSplit()) {
                    Text ("Percentage Split")
                }
                NavigationLink (
                    destination: ItemizedSplit()) {
                    Text ("Itemized Split")
                }
                NavigationLink (
                    destination: CustomSplit()) {
                        Text("Custom Split")
                }
            }
        }
    }
}

struct HowToSplit_Previews: PreviewProvider {
    static var previews: some View {
        HowToSplit()
    }
}
