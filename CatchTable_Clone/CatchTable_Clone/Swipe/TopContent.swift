//
//  TopContent.swift
//  CatchTable_Clone
//
//  Created by 이영준 on 2022/06/27.
//

import SwiftUI

struct TopContent: View {
    var status: String
    var subTitle: String
    var mainTitle: String
    var imageName: String
    
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
                        RoundedRectangle(cornerRadius: 20, style: .continuous).fill(self.statusColor(status2: status))
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
        }
    }
    
    func statusColor(status2: String) -> Color {
        switch status2 {
        case "UPDATE":
            return Color.orange
        case "HOT":
            return Color.green
        case "REVIEW":
            return Color.yellow
        case "NOW":
            return Color.blue
        case "SEASON":
            return Color.brown
        case "RANKING":
            return Color.mint
        case "PICK":
            return Color.purple
        default:
            return Color.cyan
        }
    }
    
}
