# auto_git_tool  
## ディレクトリ
・auto_git_tool.shは  

```
/usr/bin/auto_git_tool.sh  
```

・auto_git_tool.service  
  
```
/etc/systemd/system/auto_git_tool.service  
``` 

・wsl.conf  

```
/etc/wsl.conf  
```

## 使い方メモ  
### 初めに  
systemctlコマンドを使えるようにする為、  
https://github.com/microsoft/WSL/releases/  
このサイトから最新版のwslを入れる  
<br>
導入が完了したら

```  
/etc/wsl.conf
```

を作成し、  

```
[boot]  
systemd=true  
```

を記述  
完了したらPowerShellを起動し、

```
wsl --shutdown
```

を入力し、Ubuntuを起動

### 導入方法
1.auto_git_tool.shのファイルの中身を開き、  
kanikama0601の部分を好きなユーザー名に変更する  
for_testの部分はgit cloneでできたフォルダに設定する  
(この際、"auto commit"を弄るとコミットの際のコメントを変更できる)  
<br>
2.auto_git_tool.serviceのファイルの中身を開き、  
User=　とGroup=　を適したユーザーに変更  
<br>
3.先程編集したファイルをそれぞれ適したディレクトリに移動  
(ディレクトリは本ファイルの上部に記載)  
<br>
4.

```
systemctl start auto_git_tool.service  
```

を入力し、何も出なかったら  

```
systemctl status auto_git_tool.service  
```

で大丈夫そうか確認  
大丈夫そうだったら  

```
systemctl enable auto_git_tool.service  
```

で自動起動の有効化  
終わったら一度閉じ、PowerShellで  

```
wsl --shutdown  
```

を入力、再度起動

```
systemctl status auto_git_tool.service  
```

で再度確認し、大丈夫そうだったら終わり
