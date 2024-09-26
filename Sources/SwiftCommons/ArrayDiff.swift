public class ArrayDiff {
    
    public init() {}
    
    public func countOccurance(_ array:[[String]]) -> [String:Int] {
        var _set:Set<String> = []
        for aa in array {
            for t in aa {
                if t != "" {
                    _set.insert(t)
                }
            }
        }
        var dict:[String:Int] = [:]
        for t in _set {
            dict[t] = 0
        }
        for aa in array {
            for t in aa {
                if let v = dict[t] {
                    dict[t] = v + 1
                }else{
                    dict[t] = 1
                }
            }
        }
        return dict
    }
    
    public func calculateOccurance(_ array:[[String]]) -> [String:Float] {
        let _dict = self.countOccurance(array)
        let rows = array.count
        var dict:[String:Float] = [:]
        for (t, v) in _dict {
            let vv = Float(v) / Float(rows)
            dict[t] = vv
            
//            print(t,v, vv)
        }
        return dict
    }
    
    public func diffOccurance(threshold:Float, _ array:[[String]]) -> ([String], [String]) {
        let dict = self.calculateOccurance(array)
        var majors:[String:Float] = [:]
        var minors:[String:Float] = [:]
        for (t,v) in dict {
            if v >= threshold {
                majors[t] = v
            }else{
                minors[t] = v
            }
        }
        
//        for (t,v) in majors.sorted(by: { d1, d2 in
//            return d1.value > d2.value
//        }) {
//            print("major: \(t) - \(v)")
//        }
//        
//        for (t,v) in minors.sorted(by: { d1, d2 in
//            return d1.value > d2.value
//        }) {
//            print("minors: \(t) - \(v)")
//        }
        
        return (majors.keys.sorted(), minors.keys.sorted())
        
    }
}
