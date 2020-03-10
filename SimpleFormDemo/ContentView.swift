//
//  ContentView.swift
//  SimpleFormDemo
//
//  Created by shiga on 10/03/20.
//  Copyright © 2020 shiga. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var pinON: Bool = true
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section(header: Text("Payment Methods").bold()) {
                    
                    HStack {
                        
                        Text("Mastercard***6390")
                        
                        Spacer()
                        
                        Image("mast")

                    }
                    
                    Text("Expires 11/24")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    HStack {
                        
                        Image(systemName: "folder")
                            .font(Font.system(size: 25.0))
                            .foregroundColor(.gray)
                        
                        Text("Add new card")
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            
                            Image(systemName: "plus.circle.fill")
                                    .font(Font.system(size: 30))
                        }
                    }
                    
                    
                    HStack {
                        
                        Image(systemName: "folder")
                            .font(Font.system(size: 25.0))
                            .foregroundColor(.gray)
                        
                        Text("Add paypal")
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .font(Font.system(size: 30))
                        }
                    }
                }
                
                
                Section(header: Text("Payment History").bold()) {
                    Text("No completed transactions")
                }
                
                Section(header: Text("Security").bold()) {
                    Toggle(isOn: $pinON) {
                        Text("Pin ON")
                    }
                }
                
                Section(header: Text("Order Information").bold()) {
                    
                    HStack {
                        Image(systemName: "location")
                            .font(Font.system(size: 25.0))
                            .foregroundColor(.gray)
                        
                        Text("Add shipping address")
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .font(Font.system(size: 30.0))
                            
                        }
                    }
                    
                }
                
            }

            .navigationBarTitle("Payment & Orders", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
