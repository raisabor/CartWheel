//
//  CartView.swift
//  Indiewave
//
//  Created by Richmond Aisabor on 7/31/21.
//


import SwiftUI

struct FavoriteView: View {
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                List([(name: "productName", price: 5)], id: \.name) { product in
                    HStack {
                        Text(product.name)
                        Spacer()
                        Text("$\(product.price).00")
                    }
                }
                .listStyle(InsetGroupedListStyle())

                ZStack {
                    Color(.systemBackground)
                        .shadow(color: .gray, radius: 4, x: 0, y: 2)

                    HStack {
                        Text("Subtotal: $20.00")
                            .bold()

                        Spacer()

                        Button("Check out", action: {})
                            .padding(8)
                            .foregroundColor(.white)
                            .background(Color.purple)
                            .cornerRadius(4)
                    }
                    .padding()
                }
                .frame(height: 60)
            }
            .navigationTitle("Cart")
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}