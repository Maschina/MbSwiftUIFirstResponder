//
//  Def.swift
//  MbSwiftFirstResponder
//
//  Created by QuickPlan.app on 2020/12/2.
//
#if os(macOS)
import SwiftUI

extension TextField {
    public func firstResponder<V: Hashable>(id: V, firstResponder: Binding<V?>, resignableUserOperations: MbFirstResponder.TextField.ResignableUserOperations = .all, didBackViewLoaded: ((NSTextField) -> Void)? = nil) -> some View {
        self
            .background(MbFRHackView<V, NSTextField>(id: id, firstResponder: firstResponder, resignableUserOperations: resignableUserOperations, didBackViewLoaded: didBackViewLoaded))
    }
}
#endif
