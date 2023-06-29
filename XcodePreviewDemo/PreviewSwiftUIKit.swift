//
//  PreviewSwiftUIKit.swift
//  XcodePreviewDemo
//
//  Created by Sharker on 6/28/23.
//

import SwiftUI
import WidgetKit

struct PreviewSwiftUIKit: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // leave this empty
    }
    func makeUIViewController(context: Context) -> some UIViewController {
        ViewController()
    }
 
}


struct PreviewSwiftUIKit_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PreviewSwiftUIKit()
        }.previewDevice("iPhone 14")
        
        Group {
           PreviewSwiftUIKit()
       }.previewDevice("iPhone 14 Pro Max")
    }
}

#Preview("UIKitPreview") {
    return Group {
        PreviewSwiftUIKit()
    }.previewDevice("iPhone SE")
}

//#if os(iOS) || os(macOS)
//private let family = WidgetFamily.systemSmall
//#elseif os(watchOS)
//private let family = WidgetFamily.accessoryRectangular
//#endif


