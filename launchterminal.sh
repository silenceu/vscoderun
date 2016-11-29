osascript -e 'tell application "Terminal" to activate do script "cd `dirname '$1'` && clear && bash /Users/vsruncode.sh '$1' && exit"'
