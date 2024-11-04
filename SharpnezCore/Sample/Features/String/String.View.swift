//
//  String.View.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 04/11/24.
//

import SharpnezCore
import SwiftUI

extension Features.String {
    struct ContentView: View {
        // MARK: - Properties -
        
        private let formats: [CoreDateFormat] = CoreDateFormat.allCases
        
        // MARK: - Body -
        var body: some View {
            List {
                formatDateStringView
                toDateView
            }
            .navigationTitle("String + Extensions")
            .listStyle(.insetGrouped)
        }
        
        // MARK: - Format Date String View -
        
        var formatDateStringView: some View {
            Section {
                VStack(alignment: .center) {
                    Text("Format Date String")
                        .font(.title)
                    Text("Formats:")
                        .font(.subheadline)
                    ForEach(formats, id: \.self) {
                        Text($0.rawValue)
                    }
                    Text("Examples:")
                        .font(.subheadline)
                    ForEach(formats, id: \.self) {
                        let baseString = Date().toString() ?? ""
                        let formattedString = baseString.formatDate(to: $0) ?? ""
                        Text("\(baseString) to: \(formattedString)")
                    }
                }
            }
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            .padding()
        }
        
        // MARK: - Format Date String View -
        
        var toDateView: some View {
            Section {
                VStack(alignment: .center) {
                    Text("To Date")
                        .font(.title)
                    let formattedString = Date().description.toDate() ?? Date()
                    Text("Date().description = \n\(Date().description) \n\nDate().description.toDate() = \n\(formattedString.description)")
                }
            }
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            .padding()
        }
    }
}
