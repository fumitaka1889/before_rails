require 'launchy'
Launchy.open "https://www.youtube.com"
sleep(60 * 1)
# 24分後休憩用のサイトを聞く
Launchy.open("https://diveintocode.jp/")
