//
//  DetailView.swift
//  HKRNWS
//
//  Created by Meddy on 12/4/23.
//

import SwiftUI
import WebKit


struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "http://www.google.com")
    }
}


