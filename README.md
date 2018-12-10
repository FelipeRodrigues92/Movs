# Movs


Este é um divertido desafio proposto a mim e aceito com animação. Me foi solicitado uma aplicação que utilize a API do TMDB para a apresentar filmes a amantes de filmes.

A aplicação no momento possui duas telas principais, uma Collection View com os filmes próximos de estrear e outra de com as informações mais detalhada.

Esse projeto foi executado seguindo fundamentos da Clean Swift , arquitetura VIP. Além disso foram utilizado frameworks como o Alamofire Moya, SnapKit, Kingfisher, Quick  e Nimble.

---
# Instalação


Este projeto pode ser aberto no Xcode. Caso alguma das framework perca a referência pode ser resolvido com comando “pod install” do diretório “Movs/“ em que se encontra o Podfile.

O PodFile está com seguinte configuração:


#Uncomment the next line to define a global platform for your project
#platform :ios, '9.0'

target 'Movs' do
  #Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  #Pods for Movs
  
  pod 'Moya', '~> 11.0'
  
  pod 'SnapKit'
  
  pod 'Kingfisher', '~> 4.0'


  target 'MovsTests' do
    inherit! :search_paths
    
    pod 'Quick'
    
    pod 'Nimble'
    
  end
end
