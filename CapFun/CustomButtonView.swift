//
//  CustomButtonView.swift
//  CapFun
//
//  Created by Pedro Gonçalves on 03/08/24.
//

import SwiftUI

struct CustomButtonView: View {
    var title: String
    var color: Color
    var body: some View {
        Text(title)
            .font(.body)
            .padding(10)
            .background(color)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    CustomButtonView(title: "Tap Me!", color: .blue)
}
