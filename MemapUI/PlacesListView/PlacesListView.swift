//
//  PlacesListView.swift
//  MemapPresentation
//
//  Created by Vu Dinh Phong on 11/03/2026.
//

import SwiftUI
import MemapPresentation

struct PlacesListView: View {
    
    var viewModelWrapper: DefaultPlacesListViewModelWrapper
    
    var body: some View {
        List(viewModelWrapper.places, id: \.id) { item in
            Text(item.name ?? .empty)
        }
        .task {
            viewModelWrapper.viewModel.load()
        }
    }
    
}
