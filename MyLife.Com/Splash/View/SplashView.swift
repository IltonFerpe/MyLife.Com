import SwiftUI

struct SplashView: View {
    @State var state: SplashViewModel = .error("Tente Novamente Mais Tarde")

    var body: some View {
        switch state {
        case .loading:
            loadingView()
        case .goToHomePage:
            goToHomePageView()
        case .goToSignInPage:
            goToSignInPageView()
        case .error(let msg):
            errorView(msg)
        
        }
    }
}

extension SplashView {
    func loadingView() -> some View {
        Text("Aqui vai aparecer a tela de loading")
    }
}

extension SplashView {
    func goToHomePageView() -> some View {
        Text("vai para a pagina main")
    }
}

extension SplashView {
    func goToSignInPageView() -> some View {
        Text("vai para a pagina de login")
    }
}

extension SplashView {
  func errorView(_ msg: String) -> some View {
    Text("Erro")
      .alert(isPresented: .constant(true)) {
      Alert(title: Text("Erro"), message: Text(msg), dismissButton: .default(Text("Ok")))
    }
  }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
