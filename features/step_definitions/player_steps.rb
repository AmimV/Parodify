Dado("Login com {string} e {string}") do |email, password|
  goto_login
  login_with(email, password)
end

Dado("que eu gosto muito de {string}") do |cat|
  select_cat(cat)
end

Quando("toco a seguinte canção:") do |table|
  @parody = table.rows_hash #@ serve para usar em outros steps
  select_parody(@parody)
end

Então("essa paródia deve ficar em modo de reprodução") do
  expect(play_music).to have_text @parody[:parodia]
end
