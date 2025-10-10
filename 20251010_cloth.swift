import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dict: [String: [String]] = [:]
    
    for cloth in clothes {
        guard let kind = cloth.last,
              let name = cloth.first else {
            continue
        }
        var names = dict[kind] ?? []
        names.append(name)
        dict[kind] = names
    }
    
    // 조합
    return dict.values.map { $0.count + 1 }.reduce(1, *) - 1
}
