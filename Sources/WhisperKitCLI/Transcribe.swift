//  For licensing see accompanying LICENSE.md file.
//  Copyright © 2024 Argmax, Inc. All rights reserved.

import ArgumentParser
import CoreML
import Foundation
import WhisperKit

@available(macOS 13, iOS 16, watchOS 10, visionOS 1, *)
struct Transcribe: AsyncParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: "Transcribe audio to text using WhisperKit"
    )

    @OptionGroup
    var cliArguments: CLIArguments

    mutating func run() async throws {
        try await WhisperKitCommand.run(cliArguments: cliArguments, task: .transcribe)
    }
}
