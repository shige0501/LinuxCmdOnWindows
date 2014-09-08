#coding: windows-31j

require "win32ole"

# パスの指定チェック
if ARGV[0] == nil
    print "Usage: ファイル名を指定してください。"
    exit -1
end

# シェルの取得
shell = WIN32OLE.new("WScript.Shell")

# 秀丸を開くコマンドの生成
# 前提： C:\Windows直下に、hidemaru.lnkという名前のショートカットを作成すること
cmd = "hidemaru.lnk " + Dir::pwd + "\\" + ARGV[0]
shell.Run(cmd)

