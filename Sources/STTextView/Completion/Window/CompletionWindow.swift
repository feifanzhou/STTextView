//  Created by Marcin Krzyzanowski
//  https://github.com/krzyzanowskim/STTextView/blob/main/LICENSE.md

import AppKit

internal final class CompletionWindow: NSWindow {

    override var canBecomeKey: Bool {
        // Disables keyboard events, but gives nice feeling where
        // tableview is not disabled, hence hacked in keyDown
        false
    }

}

