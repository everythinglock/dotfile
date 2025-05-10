function fish_user_key_bindings
    # C-h: 光标左移
    bind \ch backward-char

    # C-l: 光标右移
    bind \cl forward-char

    # # C-i: 绑定到 backspace
    # bind \ci backward-delete-char
end
