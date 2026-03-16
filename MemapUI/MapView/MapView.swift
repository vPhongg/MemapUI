//
//  MapView.swift
//  MemapPresentation
//
//  Created by Vu Dinh Phong on 25/02/2026.
//

import SwiftUI
import MemapMap

struct MapView: View {
    
    @Binding var isPresentingPlaceInfoDetailView: Bool
    @Bindable var viewModel: AnyMapViewModel
    
    var onSelectItem: (PlaceInfoViewModel) -> Void
    
    var body: some View {
        MMap(
            items: viewModel.places.toModels().toMMapItems(),
            isPresentingPlaceInfoDetailView: $isPresentingPlaceInfoDetailView,
            onSelectItem: { item in
                onSelectItem(item.toPresentationModel())
            }
        )
        .overlay {
            if viewModel.isLoading {
                LoadingView()
            } else {
                EmptyView()
            }
        }
        .task {
            do {
                try await self.viewModel.load()
            } catch {
                print("ABC \(error.localizedDescription)")
            }
        }
    }
    
}
