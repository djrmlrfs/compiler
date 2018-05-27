set -e
cd "$(dirname "$0")"
export CCHK="java -classpath ./lib/antlr-4.7-complete.jar:./bin Main"
cat > test.mxx
$CCHK