//
//  LoadingErrorView.swift
//  Aviasales
//
//  Created by Kurbatov Artem on 22.07.2023.
//

import SwiftUI

struct LoadingErrorView: View {
    
    private let model: SearchViewModel
    
    init(model: SearchViewModel) {
        self.model = model
    }
    
    var body: some View {
        ZStack {
            Color(UIColor.systemGray6)
                .ignoresSafeArea()
            VStack {
                Text("Что-то пошло не так")
                    .font(.system(size: 20, weight: .bold))
                Button {
                    model.fetchFlights()
                } label: {
                    Text("Повторить")
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct LoadingErrorView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingErrorView(model: SearchViewModel(apiService: APIService(), formatterService: FormatterService()))
    }
}
