//
//  SelectRegionViewModel.swift
//  FindCoronaCenter
//
//  Created by solgoon on 2023/01/14.
//

import Foundation
import Combine

class SelectRegionViewModel: ObservableObject {
    @Published var centers = [Center.Sido: [Center]]()
    private var cancellables = Set<AnyCancellable>()
    
    init(centerNetwork: CenterNetwork = CenterNetwork()) {
        centerNetwork.getCenterList()
            .receive(on: DispatchQueue.main) // UI에서 받아서 사용하기 때문
            .sink(
                receiveCompletion: { [weak self] in
                    guard case .failure(let error) = $0 else { return }
                    print(error.localizedDescription)
                    self?.centers = [:]
                    
                },
                receiveValue: { [weak self] centers in
                    self?.centers = Dictionary(grouping: centers) { $0.sido }
                }
            )
            .store(in: &cancellables)
    }
}
