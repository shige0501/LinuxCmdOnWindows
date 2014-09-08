#! /usr/local/bin/ruby -Ku
# coding: windows-31j

# ファイルの内容を標準出力
def printFile(path)
    IO.foreach(path) do |s|
        print s
    end
end


if ARGV[0] == nil
    # ARGV[0]が空の場合、usageを標準出力して終了
    print "Usage: 引数にファイル名を指定してください。"
    exit -1
elsif ARGV.length == 2
    if File.exists?(ARGV[0]) && File.exists?(ARGV[1])
        # 複数ファイルがある場合は、連結して標準出力
        2.times { |count|
            printFile(ARGV[count])
        }
    end
else
    # ファイルの存在をチェックし、標準出力
    if File.exists?(ARGV[0])
        printFile(ARGV[0])
    end
end


