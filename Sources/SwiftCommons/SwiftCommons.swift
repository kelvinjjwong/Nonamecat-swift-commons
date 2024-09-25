public class ArrayDiff {
    
    public func diff(_ array:[String]) -> ([String], [String]) {
        var _set:Set<String> = []
        for t in array {
            if t != "" {
                _set.insert(t)
            }
        }
        return ([], [])
    }
}
