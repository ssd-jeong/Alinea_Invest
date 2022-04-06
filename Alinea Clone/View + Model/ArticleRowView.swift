//
//  ArticleRowView.swift
//  Alinea Clone
//
//  Created by Seong-Min Jeong on 4/6/22.
//
import SwiftUI

fileprivate let relativeDateFormatter = RelativeDateTimeFormatter()

struct Article {
    let site: String
    let title: String
    let date: Date
    let tickers: String
    let image: String
    var siteText: String {
        site
    }
    var titleText: String {
        title
    }
    var tickerText: String {
        tickers
    }
    var dateText: String {
        "\(relativeDateFormatter.localizedString(for: date, relativeTo:Date()))"
    }
    var imageURL: URL? {
        URL(string: image)
    }
}

extension Article: Codable{}
extension Article: Identifiable{
    var id: String{title}
}

final class Model: ObservableObject{
    @Published var apiResponse: NewsAPIResponse = NewsAPIResponse(content: [])
    private let sessionProcessingQueue = DispatchQueue(label: "sessionProcessingQueue")
    init(){
        updateData()
    }
    
    func updateData(){
        let url = URL(string: "https://financialmodelingprep.com/api/v3/fmp/articles?page=0&size=5&apikey=e5cf693f26f60984203aeb89bd574099")
        let jsonDecoder = JSONDecoder()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        jsonDecoder.dateDecodingStrategy = .formatted(dateFormatter)
        let task = URLSession.shared.dataTaskPublisher(for: url!)
            .subscribe(on: self.sessionProcessingQueue)
            .map({return $0.data})
            .decode(type: NewsAPIResponse.self, decoder: jsonDecoder)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {(subscriberCompletion) in
                switch subscriberCompletion {
                case .finished:
                    break
                case .failure(let error):
                    print(error)
                }
            }, receiveValue: {[weak self] (apiResponse) in
                self?.apiResponse = apiResponse
            })
    }
}

struct NewsAPIResponse : Decodable{
    let content: [Article]
}

struct APIResponseView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        
        List(model.apiResponse.content){ article in
            ArticleRowView(article: article)
        }.listStyle(.plain)
    }
}

struct ArticleRowView: View {
    
    let article: Article
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 16){
                VStack(alignment: .leading, spacing: 4){
                    Text(article.siteText)
                        .font(Font.custom("Inter-Regular.ttf", size: 12))
                        .padding([.bottom], 2)
                    Text(article.titleText)
                        .font(Font.custom("Inter-SemiBold", size: 20))
                        .minimumScaleFactor(0.75)
                        .padding([.bottom], 4)
                    HStack(spacing: 8){
                        Text(article.dateText)
                            .font(Font.custom("Inter-Regular.ttf", size: 12))
                        Image("rect")
                        Text(article.tickerText)
                            .font(Font.custom("Inter-Regular.ttf", size: 12))
                        Image("green")
                            .padding([.leading, .trailing], -8)
                        Text("2.33%")
                            .font(Font.custom("Inter-Regular.ttf", size: 12))
                            .foregroundColor(Color(red: 0.345, green: 0.50, blue: 0.155, opacity: 1.0))
                    }.lineLimit(1)
                        .minimumScaleFactor(0.75)
                }
                Spacer()
                AsyncImage(url: article.imageURL) {image in
                    image.resizable()
                        .frame(width: 64, height: 64, alignment: .trailing)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(6)
                } placeholder: {
                    ProgressView()
                }
            }.listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                .listRowSeparator(.hidden)
                .padding(.top, 16)
                .padding(.bottom, 8)
            Image("rect-hor")
        }
    }
}
