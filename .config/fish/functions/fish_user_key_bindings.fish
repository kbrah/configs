
function fish_user_key_bindings
    fish_vi_key_bindings
    bind -M insert \cF accept-autosuggestion
    bind -M insert \cA accept-autosuggestion
    bind -M normal A end-of-line and "set fish_bind_mode 'default'"
end
