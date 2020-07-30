# Git

## SSH

<https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh>
<https://stackoverflow.com/questions/15589682/ssh-connect-to-host-github-com-port-22-connection-timed-out>
<https://medium.com/@czarpino/how-to-tell-git-which-ssh-key-to-use-c8574fb243fd>

>./CreateKeyForSSH.sh

## GPG Signing

<https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification>

>gpg --full-generate-key

>gpg --list-secret-keys --keyid-format LONG

>gpg --armor --export [yourkey]

>git config --global user.signingkey [yourkey]

>git commit -S -m [commit message]

## Git LFS

>git lfs install

>git lfs migrate info --everything --above=1.4kb

>git lfs track "*.exe"

>git add .gitattributes

<https://github.com/git-lfs/git-lfs/blob/master/docs/man/git-lfs-migrate.1.ronn?utm_source=gitlfs_site&utm_medium=doc_man_migrate_link&utm_campaign=gitlfs>
