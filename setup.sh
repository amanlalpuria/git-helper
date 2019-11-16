# To setup pre-push Hook
  
case "$OSTYPE" in
  linux*)   echo "LINUX" 
			cp Hooks/ .git/hooks  ;;
  msys*)    echo "WINDOWS" 
			copy Hooks/ .git/hooks ;;