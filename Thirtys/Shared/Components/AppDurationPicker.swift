//
//  AppDurationPicker.swift
//  Thirtys
//
//  Created by Ivan Nur Ilham Syah on 20/05/24.
//

import SwiftUI

struct AppDurationPicker: View {
    
    @Binding var selection: Int
    
    var label: String
    var placeholder: String = "Select Duration"
    
    @State private var selected: DurationType = .day
    @Environment(\.isEnabled) private var isEnabled
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Text("\(label)")
                .font(.subheadline)
                .bold()
                .foregroundStyle(.kTitleText)
            
            HStack {
                
                TextField(placeholder, value: $selection, format: .number)
                    .fontWeight(.medium)
                    .padding(.zero)
                
                Spacer()
                
                Text("Day")
                
//                if isEnabled {
//                    Picker("", selection: $selected) {
//                        ForEach(DurationType.allCases, id: \.hashValue) {
//                            Text($0.rawValue).tag($0)
//                        }
//                    }
//                    .frame(maxHeight: 0)
//                    .pickerStyle(.menu)
//                    .tint(.kTitleText)
//                    .padding(.zero)
//                }
                
            }
            .foregroundStyle(.kTitleText)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(16)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.kAccent, lineWidth: 2)
            )
            
        }
    }
}

#Preview {
    AppDurationPicker(selection: .constant(0), label: "Label")
}
