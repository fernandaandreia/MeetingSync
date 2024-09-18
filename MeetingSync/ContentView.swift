import SwiftUI

struct LandingPageView: View {
    @State private var selectedDate = Date()  // Variável para armazenar a data selecionada

    var body: some View {
        VStack {
            // Título do App
            Text("MeetingSync")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.green)
                .padding(.top, 50)
            
            // Contador de reuniões de hoje
            HStack {
                Text("Reuniões hoje:")
                    .font(.headline)
                Spacer()
                Text("5")
                    .font(.title)
                    .foregroundColor(.red)
                    .padding(.horizontal, 10)
                    .background(Color.pink.opacity(0.3))
                    .cornerRadius(8)
            }
            .padding()
            
            // Calendário interativo com DatePicker
            VStack {
                DatePicker("Selecione uma data", selection: $selectedDate, displayedComponents: [.date])
                    .datePickerStyle(GraphicalDatePickerStyle())  // Estilo gráfico de calendário
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 5)
                
                // "Criar nova reunião" como texto sublinhado
                Button(action: {
                    // Ação ao clicar no texto "Criar nova reunião"
                    print("Nova reunião criada para a data: \(selectedDate)")
                }) {
                    Text("Criar nova reunião")
                        .font(.headline)
                        .underline()  // Adiciona sublinhado ao texto
                        .foregroundColor(.blue)  // Cor azul para parecer um link
                }
                .buttonStyle(PlainButtonStyle())  // Remove o estilo de botão tradicional
                .padding(.top, 10)
            }
            .padding()
            
            // Botão para acessar a data de hoje
            Button(action: {
                // Ação ao clicar no botão
                selectedDate = Date()  // Atribui a data de hoje ao calendário
            }) {
                Text("Acessar reuniões de hoje")
                    .font(.subheadline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.bottom, 30)
            
            Spacer()
            
            // Barra de Navegação inferior com ícones clicáveis
            HStack {
                Spacer()
                
                // Lista de contatos
                Button(action: {
                    // Ação ao clicar em Contatos
                }) {
                    VStack {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Contatos")
                            .font(.caption)
                    }
                }
                
                Spacer()
                
                // Reuniões recentes
                Button(action: {
                    // Ação ao clicar em Reuniões Recentes
                }) {
                    VStack {
                        Image(systemName: "calendar.badge.clock")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Recentes")
                            .font(.caption)
                    }
                }
                
                Spacer()
                
                // Lembretes
                Button(action: {
                    // Ação ao clicar em Lembretes
                }) {
                    VStack {
                        Image(systemName: "bell")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Lembretes")
                            .font(.caption)
                    }
                }
                
                Spacer()
                
                // To Do
                Button(action: {
                    // Ação ao clicar em To Do
                }) {
                    VStack {
                        Image(systemName: "checklist")
                            .resizable()
                            .frame(width: 40, height: 40)
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

struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageView()
    }
}

