# 📱 MultiApp - Aplicativo Multifuncional

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)

Aplicativo Flutter com duas funcionalidades úteis: consulta de CEP e conversão de moedas.

## ✨ Funcionalidades

### 🔍 Consulta de CEP
- Integração com API ViaCEP
- Busca automática ao digitar 8 dígitos
- Exibe:
  - ✅ Estado (UF)
  - 🏙️ Cidade
  - 🌎 Região
- Validação de CEP inválido

### 💱 Conversor de Moedas
- Conversão entre múltiplas moedas
- Interface intuitiva
- (Em desenvolvimento) Taxas atualizadas

## 🛠️ Tecnologias

- **Flutter** 3.19+
- **Dart** 3.3+
- Pacotes:
  - `http` para requisições API
  - `flutter/services` para input
  - `material` para UI

## 🚀 Como Executar

1. Clone o repositório:
```bash
git clone https://github.com/seu-usuario/multiapp.git
```
2. Acesse o diretório:

bash

cd multiapp

    Instale as dependências:

bash

flutter pub get

    Execute o app:

bash

flutter run

📸 Screenshots
Tela CEP	Tela Conversor
https://screenshots/cep.png	https://screenshots/convert.png
📝 Estrutura do Código
text

lib/
├── COMOM/
│   ├── bottomBar.dart    # Barra de navegação
│   └── cores.dart        # Paleta de cores
├── cep.dart              # Tela de consulta CEP
└── convert.dart          # Tela de conversão

🤝 Contribuição

Contribuições são bem-vindas! Siga os passos:

    Faça um fork

    Crie sua branch (git checkout -b feature/nova-funcionalidade)

    Commit suas mudanças (git commit -m 'Adiciona nova funcionalidade')

    Push para a branch (git push origin feature/nova-funcionalidade)

    Abra um Pull Request
