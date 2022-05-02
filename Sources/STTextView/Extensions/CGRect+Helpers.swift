//  Created by Marcin Krzyzanowski
//  https://github.com/krzyzanowskim/STTextView/blob/main/LICENSE.md

import CoreGraphics
import Cocoa

extension CGRect {

    enum Inset {
        case left(CGFloat)
        case right(CGFloat)
        case top(CGFloat)
        case bottom(CGFloat)
    }

    func inset(_ edgeInsets: NSEdgeInsets) -> CGRect {
        var result = self
        result.origin.x += edgeInsets.left
        result.origin.y += edgeInsets.top
        result.size.width -= edgeInsets.left + edgeInsets.right
        result.size.height -= edgeInsets.top + edgeInsets.bottom
        return result
    }

    func inset(_ inset: Inset) -> CGRect {
        switch inset {
            case .left(let value):
                return self.inset(NSEdgeInsets(top: 0, left: value, bottom: 0, right: 0))
            case .right(let value):
                return self.inset(NSEdgeInsets(top: 0, left: 0, bottom: 0, right: value))
            case .top(let value):
                return self.inset(NSEdgeInsets(top: value, left: 0, bottom: 0, right: 0))
            case .bottom(let value):
                return self.inset(NSEdgeInsets(top: 0, left: 0, bottom: value, right: 0))
        }
    }

    func insetBy(dx: CGFloat) -> CGRect {
        insetBy(dx: dx, dy: 0)
    }

    func insetBy(dy: CGFloat) -> CGRect {
        insetBy(dx: 0, dy: dy)
    }
}
