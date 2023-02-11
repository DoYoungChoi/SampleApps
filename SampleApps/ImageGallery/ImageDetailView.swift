/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct ImageDetailView: View {
    let item: ImageItem

    var body: some View {
        AsyncImage(url: item.url) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        if let url = Bundle.main.url(forResource: "mushy1", withExtension: "jpg") {
            ImageDetailView(item: ImageItem(url: url))
        }
    }
}
