//
//  Regex.swift
//  Randoman
//
//  Created by NickMeepo on 2021/2/24.
//

import Foundation
import JavaScriptCore

public final class RandomRegex: Randomizable {

    public typealias RandomValue = String

    public func single() -> String {
        self.generator?.call(withArguments: [1, self.pattern])?.toString() ?? ""
    }

    public func single<G>(using generator: inout G) -> String where G: RandomNumberGenerator {
        single()
    }

    public func batch(count: Int) -> [String] {
        guard count > 0 else { return [] }
        if count == 1 {
            return [self.single()]
        }
        return self.generator?.call(withArguments: [count, self.pattern])?.toArray() as? [String] ?? []
    }

    public func batch<G>(count: Int, using generator: inout G) -> [RandomValue] where G: RandomNumberGenerator {
        batch(count: count)
    }

    internal let pattern: String

    internal let context: JSContext

    internal let generator: JSValue?

    internal init(pattern: String) {
        #if SWIFT_PACKAGE
        let bundle = Bundle.module
        #else
        let bundle = Bundle(for: RandomRegex.self)
        #endif

        guard
            let randexpUrl = bundle.url(forResource: "randexp.min", withExtension: "js"),
            let context = JSContext(),
            let window = JSValue(newObjectIn: context),
            let randexpScript = try? String(contentsOf: randexpUrl)
        else {
            fatalError("#Randoman: fatal error to load randexp.min.js.")
        }

        context.setObject(window, forKeyedSubscript: "window" as NSString)
        let value = context.evaluateScript(randexpScript)

        guard
            value?.toBool() == true,
            let generatorUrl = bundle.url(forResource: "generator", withExtension: "js"),
            let generatorScript = try? String(contentsOf: generatorUrl)
        else {
            fatalError("#Randoman: fatal error to load generator.js.")
        }
        context.evaluateScript(generatorScript)

        self.pattern = pattern
        self.context = context
        self.generator = context.evaluateScript("generator")
    }

}
