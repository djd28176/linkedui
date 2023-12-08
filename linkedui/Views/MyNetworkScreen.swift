//
//  MyNetworkScreen.swift
//  linkedui
//
//  Created by Jindong Du on 12/7/23.
//

import SwiftUI

var networkData: [NetworkModel] = [
    .init(id: 0, name: "Marry", position: "SDE at Paytm", mutual: 34, Image: "00"),
    .init(id: 1, name: "Peter", position: "Assistant Manager", mutual: 45, Image: "01"),
    .init(id: 2, name: "Jenny", position: "SDE at Ginger ", mutual: 67, Image: "02"),
    .init(id: 3, name: "Sara", position: "open to work", mutual: 103, Image: "03"),
    .init(id: 4, name: "Kia", position: "GET at HCL", mutual: 12, Image: "04"),
    .init(id: 5, name: "Shristi", position: "Student", mutual: 78, Image: "05"),
    .init(id: 6, name: "Rachel", position: "intern at iNeuron", mutual: 90, Image: "00"),
    .init(id: 7, name: "John", position: "HR at Intel", mutual: 34, Image: "01"),
    .init(id: 8, name: "Tiya", position: "purchase Engineer", mutual: 50, Image: "02"),
    .init(id: 9, name: "Pheobe", position: "Product Manager", mutual: 86, Image: "03"),
    .init(id: 10, name: "Monica", position: "Data Analyst", mutual: 55, Image: "04"),
    .init(id: 11, name: "Joe", position: "Software Development intern", mutual: 42, Image: "05"),
    .init(id: 12, name: "Charel", position: "SDE-II ", mutual: 30, Image: "00"),
    .init(id: 13, name: "Chandler", position: "Mobile Developer", mutual: 71, Image: "01"),
    .init(id: 14, name: "Max", position: "QA", mutual: 95, Image: "02"),
    .init(id: 15, name: "Nancy", position: "Frontend Developer", mutual: 18, Image: "03")
]

struct MyNetworkScreen: View {
    var body: some View {
        VStack{
            SearchBarView()
            
            HStack{
                Text("Manage my network")
                    .font(.body)
                    .foregroundStyle(.blue)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }.padding(.horizontal)
            
            Rectangle()
                .fill(Color.gray.opacity(0.4))
                .frame(width: .infinity,height: 10)
                .ignoresSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators:false){
                HStack{
                    Text("Invitations")
                        .font(.body)
                        .foregroundStyle(.blue)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }.padding(.horizontal)
                Divider()
                
                ForEach(networkData, id: \.id){data in
                    InvitationView(Data: data)
                    Divider()
                }
            }
        }
    }
}

#Preview {
    MyNetworkScreen()
}
