# 🍽️ FOODPASS

<img src="imagens/logoFoodPass.png" alt="Logo FoodPass" width="250"/>

---

## 📌 Descrição do Projeto

O **FOODPASS** é um aplicativo desenvolvido em FlutterFlow com o objetivo de **gerenciar o benefício de vale-refeição** de forma prática, moderna e acessível tanto para funcionários quanto para restaurantes.

O projeto surgiu a partir da observação de que o vale-refeição raramente dura o mês inteiro. Com o FoodPass, o trabalhador pode planejar seus gastos com mais controle e aproveitar promoções oferecidas pelos restaurantes parceiros.

### 🖼️ Telas principais

<img src="imagens/TelaLoginRestaurante.png" width="300"/>
<img src="imagens/TelaHomePageRestaurante.png" width="300"/>
<img src="imagens/TelaListaPratos.png" width="300"/>
<img src="imagens/TelaSaldoFuncionario.png" width="300"/>
<img src="imagens/TelaQrCode.png" width="300"/>

---

## ✅ Funcionalidades

- Login e cadastro para funcionários e restaurantes
- Visualização do saldo do vale-refeição
- Simulação de Pagamento via QR Code
- Cadastro, edição e exclusão de pratos
- Destaque de promoções com "flag de promoção"
- Edição de perfil e horário de funcionamento do restaurante

---

## ⚙️ Como o sistema funciona

O app funciona de forma segmentada por **perfil de usuário**:

### 👤 Funcionário
- Acessa o app com login (Firebase)
- Visualiza o saldo do benefício
- Planeja seus gastos mensais
- Realiza pagamentos via QR Code nos restaurantes parceiros
- Encontra restaurantes no mapa com promoções ativas

### 🍽️ Restaurante
- Acessa o app com login (Firebase)
- Cadastra seus pratos com foto, descrição e preço
- Ativa ou desativa a flag de promoção para os pratos
- Gerencia seu perfil (localização, horários de funcionamento)

---

## 🛠️ Tecnologias Utilizadas

| Tecnologia         | Descrição                                                                 |
|--------------------|---------------------------------------------------------------------------|
| **FlutterFlow**    | Plataforma no-code/low-code para construção visual de apps em Flutter.    |
| **Firebase**       | Autenticação de usuários e banco de dados (Firestore) em nuvem.           |
| **Firestore**      | Banco NoSQL em tempo real para armazenar dados como saldo, pratos etc.    |
| **QR Code Reader** | Leitura de QR Codes para pagamentos de funcionários nos restaurantes.     |

---

## 👥 Equipe do Projeto

| Nome             | Função no Projeto                                                |
|------------------|------------------------------------------------------------------|
| Alex Silva       | Responsável pelo desenvolvimento do aplicativo para funcionário  |
| Otávio Augusto   | Responsável pelo desenvolvimento do aplicativo para restaurante  |

---
