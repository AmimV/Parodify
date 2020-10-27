module Actions
  def goto_login
    visit "/"
    click_on "Login"
  end

  def login_with(email, password)
    find("#user_email").set email
    find("#user_password").set password
    click_on "Log in"
  end

  def login_alert
    return find(".message .message-body").text
  end

  def cadastro_preencher(email, password, confirm_password)
    delorean email

    find("input[name*=email]").set email
    find("input[placeholder='Sua senha secreta']").set password
    find("input[placeholder='Confirme a senha']").set confirm_password

    click_on "Cadastrar"
  end

  def cadastro_alert
    return alert = find(".message p").text
  end

  def select_cat(cat)
    find("a[href='/search/new']").click
    find("img[src$='#{cat.downcase}.png']").click
  end

  def select_parody(parody)
    find("a", text: parody[:banda]).click

    song = find(".song-item", text: parody[:parodia])
    song.find(".fa-play-circle").click
  end

  def play_music
    return play = song_play = find(".playing")
  end
end
