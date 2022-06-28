//
//  TopContent.swift
//  CatchTable_Clone
//
//  Created by 이영준 on 2022/06/27.
//

import SwiftUI

enum StatusBackground{
    case update
    case hot
    case review
    case now
    case season
    case ranking
    case pick
}

struct TopContent: View {
    var status: String
    var subTitle: String
    var mainTitle: String
    var imageName: String
    @State var currentStatus: StatusBackground = .update
    
    var body: some View {
        ZStack{
            Image(imageName)
                .resizable()
                .aspectRatio(1.1, contentMode: .fit)
            
            VStack(alignment: .leading, spacing: 10){
                Text(status)
                    .font(.footnote)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(
                        RoundedRectangle(cornerRadius: 20, style: .continuous).fill(Color.brown)
                    )
                
                VStack(alignment: .leading){
                    Text(subTitle)
                        .font(.system(size: 18))
                        .bold()
                        .foregroundColor(.white)
                    
                    Text(mainTitle)
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal, 20)
            //.foregroundColor(.white)
        }
    }
}

