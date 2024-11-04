//
//  Error.View.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 04/11/24.
//

import SharpnezCore
import SwiftUI

extension Features.Error {
    struct ContentView: View {
        var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Generic Error: \n\(CoreError.genericError.message)")
                    Text("Parse Error: \n\(CoreError.parseError.message)")
                    Text("Custom Error: \n\(CoreError.customError("Custom error message").message)")
                }
                .padding()
            }
            .navigationTitle("Core Errors")
        }
    }
}
