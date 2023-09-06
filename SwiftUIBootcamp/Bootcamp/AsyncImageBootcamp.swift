//
//  AsyncImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Seokwon Yoon on 2023/09/06.
//

import SwiftUI

/*
 case empty -> No image is loaded
 case success(Image) -> An image succesfully loaed.
 case failure(Error) -> An image failed to load with an error
 */


struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        // when view appears, automatically download image
        VStack {
            AsyncImage(url: url)
            
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .cornerRadius(20)
                case .failure(let error):
                    Image(systemName: "questionmark")
                }
            }
            
            AsyncImage(url: url, content: { returnedImage in
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            }, placeholder: {
                ProgressView()
            })
        }
        
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
