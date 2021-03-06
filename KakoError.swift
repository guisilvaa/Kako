//
//  KakoError.swift
//  Kako
//
//  Created by Guilherme Silva on 05/03/21.
//

import ObjectMapper

public class KakoError: Mappable, Error {
    
    var code: String?
    
    var description: String?
    
    var userMessage: String?
    
    init(code: String, description: String, userMessage: String) {
        self.code = code
        self.description = description
        self.userMessage = userMessage
    }
    
    init(error: KakoErrorType) {
        self.code = error.rawValue
        self.description = error.description()
    }
    
    required public init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        code <- map["code"]
        description <- map["description"]
        userMessage <- map["userMessage"]
    }
}
