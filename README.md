# markjs/dotfiles

```
ssh-keygen -t rsa -b 4096 -C "mark@markjs.net"
```

```
eval "$(ssh-agent -s)"
```

```
ssh-add ~/.ssh/id_rsa
```

```
pbcopy < ~/.ssh/id_rsa.pub
```

https://github.com/settings/keys

```
git clone git@github.com:markjs/dotfiles ~/.dotfiles
```
