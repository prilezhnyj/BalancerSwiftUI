//
//  ContentView.swift
//  BalancerSwiftUI
//
//  Created by Максим Боталов on 10.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNew = false

    var body: some View {
        GeometryReader { geometry in
            let safeArea = geometry.safeAreaInsets
            
            ZStack {
                VStack(alignment: .center) {
                    Text("Ваши счета")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .frame(width: geometry.size.width, alignment: .center)
                        .padding(.top, safeArea.top + 16)
                    
                    Spacer()
                    TabBarView(safeAreaButton: safeArea.bottom, isNew: $isNew)
                }
                .background(Color.white)
                .scaleEffect(isNew ? 0.7 : 1)
                .animation(.spring(response: 0.3, dampingFraction: 0.7, blendDuration: 0))
                .ignoresSafeArea(.all)
                
                NewExpenseView(isShow: $isNew)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
                    .scaleEffect(isNew ? 0.85 : 1)
                    .offset(x: isNew ? 0 : geometry.size.width)
                    .animation(.spring(response: 0.3, dampingFraction: 0.7, blendDuration: 0))
            }
            .ignoresSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
