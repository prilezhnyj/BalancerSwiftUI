//
//  TabBarView.swift
//  BalancerSwiftUI
//
//  Created by Максим Боталов on 10.10.2022.
//

import SwiftUI

struct TabBarView: View {
    @State var safeAreaButton: CGFloat
    @Binding var isNew: Bool
    
    var body: some View {
        HStack(spacing: 16) {
            HStack {
                Spacer()
                Button {
                    //
                } label: {
                    Image("money")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 22, height: 22)
                    
                }
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Image("analitics")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 22, height: 22)
                    
                }
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Image("settings")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 22, height: 22)
                    
                }
                Spacer()
            }
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
            
            Button  {
                isNew.toggle()
            } label: {
                Image(systemName: "plus")
                    .font(.system(size: 30, weight: .regular, design: .rounded))
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.white)
                    .background(Color("Blue"))
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                    .shadow(color: Color("Blue").opacity(0.5), radius: 10, x: 0, y: 0)
            }
            
        }
        .padding(16)
        .padding(.bottom, safeAreaButton)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(safeAreaButton: 0, isNew: .constant(false))
    }
}
