filename=$1;
filepath=`dirname "$filename"`;
filename=${filename//' '/'\ '};
osascript -e 'tell application "Terminal" to activate do script "cd '"$filepath"' && clear && bash /Users/vsruncode.sh '"$filename"' && exit"'
