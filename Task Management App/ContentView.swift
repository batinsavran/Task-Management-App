import SwiftUI

struct ContentView: View {
    // State değişkenleri
    @State private var isToggled = false
    @State private var imageName = "scribble.variable"
    @State private var imageText = "This is a scribble."

    var body: some View {
        VStack {
            // Başlık ekranın en üstünde
            Text("Task Management App")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 20)  // Üstten padding
                .padding(.bottom, 10)  // Alttan padding
            
            // Spacer ile diğer elemanları ortada hizalayın
            Spacer()
            
            // Button ile image ve text değiştiriliyor
            Button("Tıkla") {
                imageName = "network"
                imageText = "Network'e bağlandı"
            }
            .padding()
            .frame(width: 120, height: 60)  // Butona dikdörtgen görünüm verme
            .background(Color.blue.opacity(0.8))  // Şeffaflık ekleyin
            .foregroundColor(.white)
            .cornerRadius(15)
            
            // Toggle ile arka plan rengi değiştiriliyor
            Toggle(isOn: $isToggled) {
                Text("Kaydır")
            }
            .padding()
            .toggleStyle(SwitchToggleStyle(tint: .green))  // Yeşil renk tonunda bir switch
            
            // Dinamik olarak değişen image ve text
            Image(systemName: imageName)
                .imageScale(.large)
                .foregroundColor(.red)
            
            Text(imageText)
                .padding()
                .foregroundColor(isToggled ? Color.yellow : Color.black)  // Metin rengini durum bazında değiştir
            
            Spacer()  // Ekranın altına doğru hizalamak için
        }
        // Toggle durumuna göre arka plan rengi değiştiriliyor
        .padding()
        .background(isToggled ? Color.black : Color.white)
        .foregroundColor(isToggled ? Color.white : Color.black)
        .animation(.easeInOut, value: isToggled)  // Animasyon ekleme
    }
}

#Preview {
    ContentView()
}
