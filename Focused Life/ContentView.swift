import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "timer")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .foregroundColor(.purple) // Altere a cor conforme desejado
            
            Text("Pomodoro Timer")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.top, 20)
            
            Text("25:00") // Adicione o temporizador aqui
                .font(.system(size: 40))
                .fontWeight(.semibold)
                .padding(.top, 10)
            
            HStack(spacing: 20) {
                Button(action: {
                    // Ação para o botão iniciar/pausar
                }) {
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                
                Button(action: {
                    // Ação para o botão reiniciar
                }) {
                    Image(systemName: "arrow.counterclockwise.circle.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
            }
            .padding(.top, 20)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
