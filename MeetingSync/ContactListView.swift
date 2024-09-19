import SwiftUI

struct ContactListView: View {
    // Lista personalizada de contatos com nome, telefone, e-mail e companhia
    let contacts = [
        ("Fernanda", "123-456-7890", "email@email.com", "Corp"),
        ("Aron", "987-654-3210", "email@email.com", "Corp"),
        ("Maria", "555-123-4567", "email@email.com", "Corp"),
        ("João", "111-222-3333", "email@email.com", "Corp")
    ]
    
    var body: some View {
        VStack {
            // Título
            Text("Lista de Contatos")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.orange)
                .padding(.top, 50)
            
            // Cabeçalho da tabela
            HStack {
                Text("Nome")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Telefone")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("E-mail")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text("Corp")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            
            // Conteúdo da tabela com linhas clicáveis
            List(contacts, id: \.0) { contact in
                Button(action: {
                    // Ação ao clicar em uma linha
                    print("Contato clicado: \(contact.0)")
                }) {
                    HStack {
                        Text(contact.0) // Nome
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text(contact.1) // Telefone
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text(contact.2) // E-mail
                            .frame(maxWidth: .infinity, alignment: .leading)

                        Text(contact.3) // Companhia
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding()
                    .background(Color.white) // Para deixar o botão invisível, podemos manter o fundo branco
                    .cornerRadius(10)
                    .shadow(radius: 2)
                }
            }
            
            // Botão para cadastrar novo contato
            Button(action: {
                // Ação para cadastrar novo contato
                print("Cadastrar novo contato clicado")
            }) {
                Text("Cadastrar novo contato")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.top, 10)
            
            Spacer()
            
            // Barra de navegação inferior com ícones
            HStack {
                Spacer()
                
                // Ícone de Home
                NavigationLink(destination: LandingPageView()) {                  
                    
                    VStack {
                        Image(systemName: "house")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Home")
                            .font(.caption)
                    }
                }
                
                Spacer()
                
                // Ícone de Reuniões Recentes
                Button(action: {
                    // Ação ao clicar em Reuniões Recentes
                    print("Reuniões Recentes clicado")
                }) {
                    VStack {
                        Image(systemName: "calendar.badge.clock")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Recentes")
                            .font(.caption)
                    }
                }
                
                Spacer()
                
                // Ícone de Lembretes
                Button(action: {
                    // Ação ao clicar em Lembretes
                    print("Lembretes clicado")
                }) {
                    VStack {
                        Image(systemName: "bell")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Lembretes")
                            .font(.caption)
                    }
                }
                
                Spacer()
                
                // Ícone de To Do
                Button(action: {
                    // Ação ao clicar em To Do
                    print("To Do clicado")
                }) {
                    VStack {
                        Image(systemName: "checklist")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("To Do")
                            .font(.caption)
                    }
                }
                
                Spacer()
            }
            .padding()
            .background(Color.gray.opacity(0.2))
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}

