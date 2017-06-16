# VimSessionManager
Manage the vim session automatically.
1, auto-save the session if `there is a Session.vim in the current dir` and `buffer number > 5`
2, auto-load the session if `there is a Session.vim in the current dir` and `you open vi without loading any file`

## How to install
Install it by bundle, adding this to your `.vimrc` file

```
Plugin 'johnzeng/VimSessionManager'
```

and then execute `BundleInstall` in new vi window.

## key-mapping
map `<F2>` to create a Session.vim in the local dir.


**ping me if you have any idea about managing session**



