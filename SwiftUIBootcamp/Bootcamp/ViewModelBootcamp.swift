//
//  ViewModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/06.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    // @Published is same thing as @State
    // published alert the changes to the view model
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func deleteFruits(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orage", count: 2)
        let fruit2 = FruitModel(name: "Banana", count: 1)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
}

struct ViewModelBootcamp: View {
    /* Let the view know that is Observable object can be changed
       But ObservedObject will be loaded every time when the view is re-loaded */
//    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    /* if the objects are same but the view
       you can use @StateObejct, then even though when the view is re-loaed
       the @StateObject will persist */
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()

    /* so when you are going to pass the Observable object into another screen use @ObservedObject and vice versa
       @StateObject    -> USE THIS ON CREATION / INIT
       @ObservedObject -> USE THIS FOR SUBVIEWS */
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruits)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(
                        destination: RandomScreen(fruitViewModel: fruitViewModel),
                        label: {
                            Image(systemName: "arrow.right")
                        })
                    
                }
            }
        }
    }
}

struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                }
            }
            
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
