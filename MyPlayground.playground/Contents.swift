//: Playground - noun: a place where people can play

import UIKit

let url = Bundle.main.url(forResource: "test", withExtension: "json")
let data = try! Data(contentsOf: url!)

print(data.count)

do {
    let object = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
    if let dictionary = object as? [String:Any]{
        let title = dictionary["dataTitle"]
        let version = dictionary["swifVersion"]
        
        let users = dictionary["users"] as? NSArray
        
        print(title!)
        print(version!)
        for user in users!{
            let user = user as! [String:Any]
            print(user)
        }
    }
}catch let error{
    print(error)
}
