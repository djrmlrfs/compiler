set -e
cd "$(dirname "$0")"
cat > test.mxx
java -classpath ./lib/antlr-4.7-complete.jar:./bin Main
cat test.asm