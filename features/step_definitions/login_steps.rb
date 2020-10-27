Dado("que acesso a página Login") do
  goto_login
end

Quando("submeto minhas credencias com: {string} e {string}") do |email, password|
  login_with(email, password)
end
Então("devo ver a mensagem de erro: {string}") do |expect_message|
  expect(login_alert).to eql expect_message
end
