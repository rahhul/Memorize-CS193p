//
//  Emojis.swift
//  Memorize
//
//  Created by Rahul on 1/6/21.
//

import Foundation



struct emojiTheme {
    
    static let anyTheme: [Theme] = [fruits, animals, objects, vehicles, sport]
    
    static let fruits = Theme(
        name: "Fruits",
        emoji: ["๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐ซ", "๐", "๐", "๐", "๐ฅญ", "๐", "๐ฅ"],
        color: "orange"
    )
    
    static let animals = Theme(
        name: "Animals",
        emoji: ["๐ฆ", "๐ถ", "๐ป", "๐ผ", "๐จ", "๐ฏ", "๐ฎ", "๐ท"],
        color: "red"
    )
    
    static let vehicles = Theme(
        name: "Vehicles",
        emoji: ["๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐ป", "๐", "๐", "๐", "๐", "๐บ", "๐ ", "๐", "๐", "๐", "๐", "๐ถ", "โต๏ธ", "๐ค", "๐ฒ", "๐ต"],
        numberOfPairs: 15,
        color: "blue"
        )
    
    static let sport = Theme(
            name: "Sport",
            emoji: ["๐พ", "โฝ๏ธ", "๐"],
            color: "yellow"
        )
    
    static let objects = Theme(
        name: "Objects",
        emoji: ["๐ฎ", "๐ก", "๐งจ", "๐ฟ", "๐บ", "๐ญ"],
        color: "blue"
    )
        
}

struct Theme {
    let name: String
    let emoji: [String]
    let numberOfPairs: Int
    let color: String
    
    
    init(name: String, emoji: [String], color: String) {
        self.name = name
        self.emoji = emoji
        self.numberOfPairs = emoji.count
        self.color = color
    }
    
    init(name: String, emoji: [String], numberOfPairs: Int, color: String) {
        self.name = name
        self.emoji = emoji
        self.numberOfPairs = numberOfPairs
        self.color = color
    }
    
}



//enum Theme: CaseIterable {
//
//    case vehicles, animals, flags, foods, symbols
//
//    var title: String {
//        switch self {
//        case .vehicles:
//            return "Vehicles"
//        case .animals:
//            return "Animals"
//        case .flags:
//            return "Flags"
//        case .foods:
//            return "Food"
//        case .symbols:
//            return "Symbols"
//        }
//    }
//
//
//    var systemName: String {
//        switch self {
//        case .vehicles:
//            return "car"
//        case .animals:
//            return "hare"
//        case .flags:
//            return "flag"
//        case .foods:
//            return "applelogo"
//        case .symbols:
//            return "heart"
//        }
//    }
//
//
//    var initialEmojiCount: Int {
//        return Int.random(in: 4..<emojis.count)
//    }
//
//
//    var emojis: [String] {
//        switch self {
//        case .vehicles:
//            return [
//                "๐ฒ", "๐", "๐", "๐", "๐", "๐",
//                "๐", "๐", "๐", "โ๏ธ", "๐", "โต๏ธ",
//                "๐ธ", "๐ถ", "๐", "๐", "๐บ", "๐ ",
//                "๐ต", "๐", "๐", "๐", "๐ป", "๐",
//            ]
//        case .animals:
//            return ["๐ถ", "๐ฑ", "๐ญ", "๐น", "๐ฐ", "๐ฆ", "๐ป", "๐ผ", "๐ปโโ๏ธ", "๐จ", "๐ฏ", "๐ฆ", "๐ฎ", "๐ท", "๐ฝ", "๐ธ", "๐ต", "๐", "๐", "๐", "๐", "๐", "๐ง", "๐ฆ", "๐ค", "๐ฃ", "๐ฅ", "๐ฆ", "๐ฆ", "๐ฆ", "๐ฆ", "๐บ", "๐", "๐ด", "๐ฆ", "๐", "๐ชฑ", "๐", "๐ฆ", "๐", "๐", "๐", "๐ชฐ", "๐ชฒ", "๐ชณ", "๐ฆ", "๐ฆ", "๐ท", "๐ธ", "๐ฆ", "๐ข", "๐", "๐ฆ", "๐ฆ", "๐ฆ", "๐", "๐ฆ", "๐ฆ", "๐ฆ", "๐ฆ", "๐ก", "๐ ", "๐", "๐ฌ", "๐ณ", "๐", "๐ฆ", "๐", "๐", "๐", "๐ฆ", "๐ฆ", "๐ฆง", "๐ฆฃ", "๐", "๐ฆ", "๐ฆ", "๐ช", "๐ซ", "๐ฆ", "๐ฆ", "๐ฆฌ", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐ฆ", "๐", "๐ฆ", "๐", "๐ฉ", "๐ฆฎ", "๐โ๐ฆบ", "๐", "๐โโฌ", "๐ชถ", "๐", "๐ฆ", "๐ฆค", "๐ฆ", "๐ฆ", "๐ฆข", "๐ฆฉ", "๐", "๐", "๐ฆ", "๐ฆจ", "๐ฆก", "๐ฆซ", "๐ฆฆ", "๐ฆฅ", "๐", "๐", "๐ฟ", "๐ฆ", "๐พ", "๐", "๐ฒ"]
//        case .flags:
//            return ["๐ณ๏ธ", "๐ด", "๐", "๐ฉ", "๐ณ๏ธโ๐", "๐ณ๏ธโโง๏ธ", "๐ดโโ ๏ธ", "๐ฆ๐ซ", "๐ฆ๐ฝ", "๐ฆ๐ฑ", "๐ฉ๐ฟ", "๐ฆ๐ธ", "๐ฆ๐ฉ", "๐ฆ๐ด", "๐ฆ๐ฎ", "๐ฆ๐ถ", "๐ฆ๐ฌ", "๐ฆ๐ท", "๐ฆ๐ฒ", "๐ฆ๐ผ", "๐ฆ๐บ", "๐ฆ๐น", "๐ฆ๐ฟ", "๐ง๐ธ", "๐ง๐ญ", "๐ง๐ฉ", "๐ง๐ง", "๐ง๐พ", "๐ง๐ช", "๐ง๐ฟ", "๐ง๐ฏ", "๐ง๐ฒ", "๐ง๐น", "๐ง๐ด", "๐ง๐ฆ", "๐ง๐ผ", "๐ง๐ท", "๐ฎ๐ด", "๐ป๐ฌ", "๐ง๐ณ", "๐ง๐ฌ", "๐ง๐ซ", "๐ง๐ฎ", "๐ฐ๐ญ", "๐จ๐ฒ", "๐จ๐ฆ", "๐ฎ๐จ", "๐จ๐ป", "๐ง๐ถ", "๐ฐ๐พ", "๐จ๐ซ", "๐น๐ฉ", "๐จ๐ฑ", "๐จ๐ณ", "๐จ๐ฝ", "๐จ๐จ", "๐จ๐ด", "๐ฐ๐ฒ", "๐จ๐ฌ", "๐จ๐ฉ", "๐จ๐ฐ", "๐จ๐ท", "๐จ๐ฎ", "๐ญ๐ท", "๐จ๐บ", "๐จ๐ผ", "๐จ๐พ", "๐จ๐ฟ", "๐ฉ๐ฐ", "๐ฉ๐ฏ", "๐ฉ๐ฒ", "๐ฉ๐ด", "๐ช๐จ", "๐ช๐ฌ", "๐ธ๐ป", "๐ฌ๐ถ", "๐ช๐ท", "๐ช๐ช", "๐ช๐น", "๐ช๐บ", "๐ซ๐ฐ", "๐ซ๐ด", "๐ซ๐ฏ", "๐ซ๐ฎ", "๐ซ๐ท", "๐ฌ๐ซ", "๐ต๐ซ", "๐น๐ซ", "๐ฌ๐ฆ", "๐ฌ๐ฒ", "๐ฌ๐ช", "๐ฉ๐ช", "๐ฌ๐ญ", "๐ฌ๐ฎ", "๐ฌ๐ท", "๐ฌ๐ฑ", "๐ฌ๐ฉ", "๐ฌ๐ต", "๐ฌ๐บ", "๐ฌ๐น", "๐ฌ๐ฌ", "๐ฌ๐ณ", "๐ฌ๐ผ", "๐ฌ๐พ", "๐ญ๐น", "๐ญ๐ณ", "๐ญ๐ฐ", "๐ญ๐บ", "๐ฎ๐ธ", "๐ฎ๐ณ", "๐ฎ๐ฉ", "๐ฎ๐ท", "๐ฎ๐ถ", "๐ฎ๐ช", "๐ฎ๐ฒ", "๐ฎ๐ฑ", "๐ฎ๐น", "๐ฏ๐ฒ", "๐ฏ๐ต", "๐", "๐ฏ๐ช", "๐ฏ๐ด", "๐ฐ๐ฟ", "๐ฐ๐ช", "๐ฐ๐ฎ", "๐ฝ๐ฐ", "๐ฐ๐ผ", "๐ฐ๐ฌ", "๐ฑ๐ฆ", "๐ฑ๐ป", "๐ฑ๐ง", "๐ฑ๐ธ", "๐ฑ๐ท", "๐ฑ๐พ", "๐ฑ๐ฎ", "๐ฑ๐น", "๐ฑ๐บ", "๐ฒ๐ด", "๐ฒ๐ฐ", "๐ฒ๐ฌ", "๐ฒ๐ผ", "๐ฒ๐พ", "๐ฒ๐ป", "๐ฒ๐ฑ", "๐ฒ๐น", "๐ฒ๐ญ", "๐ฒ๐ถ", "๐ฒ๐ท", "๐ฒ๐บ", "๐พ๐น", "๐ฒ๐ฝ", "๐ซ๐ฒ", "๐ฒ๐ฉ", "๐ฒ๐จ", "๐ฒ๐ณ", "๐ฒ๐ช", "๐ฒ๐ธ", "๐ฒ๐ฆ", "๐ฒ๐ฟ", "๐ฒ๐ฒ", "๐ณ๐ฆ", "๐ณ๐ท", "๐ณ๐ต", "๐ณ๐ฑ", "๐ณ๐จ", "๐ณ๐ฟ", "๐ณ๐ฎ", "๐ณ๐ช", "๐ณ๐ฌ", "๐ณ๐บ", "๐ณ๐ซ", "๐ฐ๐ต", "๐ฒ๐ต", "๐ณ๐ด", "๐ด๐ฒ", "๐ต๐ฐ", "๐ต๐ผ", "๐ต๐ธ", "๐ต๐ฆ", "๐ต๐ฌ", "๐ต๐พ", "๐ต๐ช", "๐ต๐ญ", "๐ต๐ณ", "๐ต๐ฑ", "๐ต๐น", "๐ต๐ท", "๐ถ๐ฆ", "๐ท๐ช", "๐ท๐ด", "๐ท๐บ", "๐ท๐ผ", "๐ผ๐ธ", "๐ธ๐ฒ", "๐ธ๐ฆ", "๐ธ๐ณ", "๐ท๐ธ", "๐ธ๐จ", "๐ธ๐ฑ", "๐ธ๐ฌ", "๐ธ๐ฝ", "๐ธ๐ฐ", "๐ธ๐ฎ", "๐ฌ๐ธ", "๐ธ๐ง", "๐ธ๐ด", "๐ฟ๐ฆ", "๐ฐ๐ท", "๐ธ๐ธ", "๐ช๐ธ", "๐ฑ๐ฐ", "๐ง๐ฑ", "๐ธ๐ญ", "๐ฐ๐ณ", "๐ฑ๐จ", "๐ต๐ฒ", "๐ป๐จ", "๐ธ๐ฉ", "๐ธ๐ท", "๐ธ๐ฟ", "๐ธ๐ช", "๐จ๐ญ", "๐ธ๐พ", "๐น๐ผ", "๐น๐ฏ", "๐น๐ฟ", "๐น๐ญ", "๐น๐ฑ", "๐น๐ฌ", "๐น๐ฐ", "๐น๐ด", "๐น๐น", "๐น๐ณ", "๐น๐ท", "๐น๐ฒ", "๐น๐จ", "๐น๐ป", "๐ป๐ฎ", "๐บ๐ฌ", "๐บ๐ฆ", "๐ฆ๐ช", "๐ฌ๐ง", "๐ด๓ ง๓ ข๓ ฅ๓ ฎ๓ ง๓ ฟ", "๐ด๓ ง๓ ข๓ ณ๓ ฃ๓ ด๓ ฟ", "๐ด๓ ง๓ ข๓ ท๓ ฌ๓ ณ๓ ฟ", "๐บ๐ณ", "๐บ๐ธ", "๐บ๐พ", "๐บ๐ฟ", "๐ป๐บ", "๐ป๐ฆ", "๐ป๐ช", "๐ป๐ณ", "๐ผ๐ซ", "๐ช๐ญ", "๐พ๐ช", "๐ฟ๐ฒ", "๐ฟ๐ผ"];
//        case .foods:
//            return ["๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐ซ", "๐", "๐", "๐", "๐ฅญ", "๐", "๐ฅฅ", "๐ฅ", "๐", "๐", "๐ฅ", "๐ฅฆ", "๐ฅฌ", "๐ฅ", "๐ถ", "๐ซ", "๐ฝ", "๐ฅ", "๐ซ", "๐ง", "๐ง", "๐ฅ", "๐ ", "๐ฅ", "๐ฅฏ", "๐", "๐ฅ", "๐ฅจ", "๐ง", "๐ฅ", "๐ณ", "๐ง", "๐ฅ", "๐ง", "๐ฅ", "๐ฅฉ", "๐", "๐", "๐ฆด", "๐ญ", "๐", "๐", "๐", "๐ซ", "๐ฅช", "๐ฅ", "๐ง", "๐ฎ", "๐ฏ", "๐ซ", "๐ฅ", "๐ฅ", "๐ซ", "๐ฅซ", "๐", "๐", "๐ฒ", "๐", "๐ฃ", "๐ฑ", "๐ฅ", "๐ฆช", "๐ค", "๐", "๐", "๐", "๐ฅ", "๐ฅ ", "๐ฅฎ", "๐ข", "๐ก", "๐ง", "๐จ", "๐ฆ", "๐ฅง", "๐ง", "๐ฐ", "๐", "๐ฎ", "๐ญ", "๐ฌ", "๐ซ", "๐ฟ", "๐ฉ", "๐ช", "๐ฐ", "๐ฅ", "๐ฏ"]
//        case .symbols:
//            return ["โค๏ธ", "๐งก", "๐", "๐", "๐", "๐", "๐ค", "๐ค", "๐ค", "๐", "โฃ๏ธ", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "โฎ๏ธ", "โ๏ธ", "โช๏ธ", "๐", "โธ๏ธ", "โก๏ธ", "๐ฏ", "๐", "โฏ๏ธ", "โฆ๏ธ", "๐", "โ", "โ๏ธ", "โ๏ธ", "โ๏ธ", "โ๏ธ", "โ๏ธ", "โ๏ธ", "โ๏ธ", "โ๏ธ", "โ๏ธ", "โ๏ธ", "โ๏ธ", "โ๏ธ", "๐", "โ๏ธ", "๐", "โข๏ธ", "โฃ๏ธ", "๐ด", "๐ณ", "๐ถ", "๐๏ธ", "๐ธ", "๐บ", "๐ท๏ธ", "โด๏ธ", "๐", "๐ฎ", "๐", "ใ๏ธ", "ใ๏ธ", "๐ด", "๐ต", "๐น", "๐ฒ", "๐ฐ๏ธ", "๐ฑ๏ธ", "๐", "๐", "๐พ๏ธ", "๐", "โ", "โญ๏ธ", "๐", "โ๏ธ", "๐", "๐ซ", "๐ฏ", "๐ข", "โจ๏ธ", "๐ท", "๐ฏ", "๐ณ", "๐ฑ", "๐", "๐ต", "๐ญ", "โ๏ธ", "โ", "โ", "โ", "โผ๏ธ", "โ๏ธ", "๐", "๐", "ใฝ๏ธ", "โ ๏ธ", "๐ธ", "๐ฑ", "โ๏ธ", "๐ฐ", "โป๏ธ", "โ", "๐ฏ๏ธ", "๐น", "โ๏ธ", "โณ๏ธ", "โ", "๐", "๐ ", "โ๏ธ", "๐", "๐ค", "๐ง", "๐พ", "โฟ๏ธ", "๐ฟ๏ธ", "๐", "๐ณ", "๐๏ธ", "๐", "๐", "๐", "๐", "๐น", "๐บ", "๐ผ", "โง", "๐ป", "๐ฎ", "๐ฆ", "๐ถ", "๐", "๐ฃ", "โน๏ธ", "๐ค", "๐ก", "๐ ", "๐", "๐", "๐", "๐", "๐", "๐", "0๏ธโฃ", "1๏ธโฃ", "2๏ธโฃ", "3๏ธโฃ", "4๏ธโฃ", "5๏ธโฃ", "6๏ธโฃ", "7๏ธโฃ", "8๏ธโฃ", "9๏ธโฃ", "๐", "๐ข", "#๏ธโฃ", "*๏ธโฃ", "โ๏ธ", "โถ๏ธ", "โธ", "โฏ", "โน", "โบ", "โญ", "โฎ", "โฉ", "โช", "โซ", "โฌ", "โ๏ธ", "๐ผ", "๐ฝ", "โก๏ธ", "โฌ๏ธ", "โฌ๏ธ", "โฌ๏ธ", "โ๏ธ", "โ๏ธ", "โ๏ธ", "โ๏ธ", "โ๏ธ", "โ๏ธ", "โช๏ธ", "โฉ๏ธ", "โคด๏ธ", "โคต๏ธ", "๐", "๐", "๐", "๐", "๐", "๐ต", "๐ถ", "โ", "โ", "โ", "โ๏ธ", "โพ", "๐ฒ", "๐ฑ", "โข๏ธ", "ยฉ๏ธ", "ยฎ๏ธ", "ใฐ๏ธ", "โฐ", "โฟ", "๐", "๐", "๐", "๐", "๐", "โ๏ธ", "โ๏ธ", "๐", "๐ด", "๐ ", "๐ก", "๐ข", "๐ต", "๐ฃ", "โซ๏ธ", "โช๏ธ", "๐ค", "๐บ", "๐ป", "๐ธ", "๐น", "๐ถ", "๐ท", "๐ณ", "๐ฒ", "โช๏ธ", "โซ๏ธ", "โพ๏ธ", "โฝ๏ธ", "โผ๏ธ", "โป๏ธ", "๐ฅ", "๐ง", "๐จ", "๐ฉ", "๐ฆ", "๐ช", "โฌ๏ธ", "โฌ๏ธ", "๐ซ", "๐", "๐", "๐", "๐", "๐", "๐", "๐ฃ", "๐ข", "๐โ๐จ", "๐ฌ", "๐ญ", "๐ฏ", "โ ๏ธ", "โฃ๏ธ", "โฅ๏ธ", "โฆ๏ธ", "๐", "๐ด", "๐๏ธ", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐ ", "๐ก", "๐ข", "๐ฃ", "๐ค", "๐ฅ", "๐ฆ", "๐ง"]
//
//        }
//    }
//}


