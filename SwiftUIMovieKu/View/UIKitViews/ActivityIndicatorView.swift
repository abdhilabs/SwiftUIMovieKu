//
//  ActivityIndicatorView.swift
//  SwiftUIMovieKu
//
//  Created by Abdhi on 03/06/20.
//  Copyright © 2020 Abdhilabs. All rights reserved.
//

import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
}
