import Testing
@testable import nonamecat_swift_commons

@Test func diffOccurance() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    let diff = ArrayDiff()
    let (majors, minors) = diff.diffOccurance(threshold: 0.5, [
        ["aa", "bb", "cc"],
        ["aa", "cc"],
        ["aa", "bb", "dd"],
        ["ee", "ff", "cc"],
        ["ff", "gg", "hh"],
    ])
    #expect("\(majors)" == "[\"aa\", \"cc\"]")
    
    print(majors)
    print(minors)
}
