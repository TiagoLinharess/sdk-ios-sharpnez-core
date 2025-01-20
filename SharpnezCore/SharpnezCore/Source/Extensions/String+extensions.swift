//
//  String+extensions.swift
//  SharpnezCore
//
//  Created by Tiago Linhares on 23/05/24.
//

import CryptoKit
import Foundation

public extension String {
    
    /// Verify if the string contains uppercased letter
    var containsUppercasedLetter: Bool {
        return contains(where: { $0.isUppercase })
    }
    
    /// Verify if the string contains lowercased letter
    var containsLowercasedLetter: Bool {
        return contains(where: { $0.isLowercase })
    }
    
    /// Verify if the string contains number
    var containsNumber: Bool {
        return contains(where: { $0.isNumber })
    }
    
    /// Verify if the string contains special character
    var containsSpecialCharacter: Bool {
        return range( of: ".*[^A-Za-z0-9].*", options: .regularExpression) != nil
    }
    
    /// Verify if the string is a valid email
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
    
    /// Crypt password
    var encripted: String {
        guard let data = data(using: .utf8) else { return self }
        let encriptedPassword = SHA256.hash(data: data)
        return encriptedPassword.compactMap { String(format: "%02x", $0) }.joined()
    }
    
    @available(*, deprecated, message: "Use toDate(with:) instead")
    func toFormattedDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormatter
            .dateFormat(
                fromTemplate: "yyyyMMdd, HH:mm",
                options: 0,
                locale: .current
            )
        
        return dateFormatter.date(from: self)
    }
    
    /// Format String to Date
    ///  - Parameters:
    ///     - format: CoreDateFormat = .normal
    ///  - Returns: Date?
    func toDate(with format: CoreDateFormat = .normal) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormatter
            .dateFormat(
                fromTemplate: format.rawValue,
                options: 0,
                locale: .current
            )
        
        return dateFormatter.date(from: self)
    }
    
    /// Format String Date
    ///  - Parameters:
    ///     - baseFormat: CoreDateFormat = .normal
    ///     - format: CoreDateFormat
    ///  - Returns: String?
    func formatDate(
        from baseFormat: CoreDateFormat = .normal,
        to format: CoreDateFormat
    ) -> String? {
        let get = DateFormatter()
        get.dateFormat = DateFormatter
            .dateFormat(
                fromTemplate: baseFormat.rawValue,
                options: 0,
                locale: .current
            )
        
        let result = DateFormatter()
        result.dateFormat = DateFormatter
            .dateFormat(
                fromTemplate: format.rawValue,
                options: 0,
                locale: .current
            )
        
        guard let date = get.date(from: self) else { return nil }
        return result.string(from: date)
    }
}
