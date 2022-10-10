//
//  NewExpenseView.swift
//  BalancerSwiftUI
//
//  Created by Максим Боталов on 10.10.2022.
//

import SwiftUI

struct NewExpenseView: View {
    
    @Binding var isShow: Bool
    @State var selectedIndex = 0
    @State var selectedСategoriesIndex = 0
    @State var textForTextField = ""
    
    var pickerItem = ["Расход", "Доход"]
    var categories = ["🥕 Продукты", "🏠 Дом"]
    
    var body: some View {
        ZStack {
            Color.white
            
            VStack(alignment: .center, spacing: 0) {
                HStack {
                    Spacer()
                    Button {
                        isShow = false
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 16, height: 16)
                            .foregroundColor(Color.red)
                    }
                    .padding(10)
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
                }
                .padding(16)
                
                Spacer()
                
                Text(selectedIndex == 0 ? "Новый расход" : "Новый доход")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 30)
                
                Text(selectedIndex == 0 ? "Введите сумму, которую потратили и выберите категорию траты." : "Введите сумму, которую заработали и выберите категорию дохода.")
                    .font(.system(size: 16, weight: .regular, design: .default))
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 30)
                    .padding(.top, 10)
                
                Picker("", selection: $selectedIndex) {
                    ForEach(0 ..< pickerItem.count) { item in
                        Text(pickerItem[item])
                    }
                }
                .pickerStyle(.segmented)
                .frame(maxWidth: .infinity)
                .padding(30)
                
                List {
                    TextField(selectedIndex == 0 ? "Сколько потрачено?" : "Сколько заработано?", text: $textForTextField)
                    
                    Picker("Категория", selection: $selectedСategoriesIndex) {
                        ForEach(0 ..< categories.count) { item in
                            Text(categories[item])
                        }
                    }
                    .pickerStyle(.automatic)
                }
                .frame(height: 160)
                .padding(.horizontal, 30)
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
                
                Button {
                    //
                } label: {
                    Image(systemName: "plus")
                        .font(.system(size: 40, weight: .regular, design: .rounded))
                        
                }
                .frame(width: 80, height: 80)
                .background(Color.green)
                .foregroundColor(Color.white)
                .clipShape(Circle())
                .padding(30)
                .shadow(color: Color.green.opacity(0.5), radius: 20, x: 0, y: 0)
            }
        }
    }
}

struct NewExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        NewExpenseView(isShow: .constant(false))
    }
}
