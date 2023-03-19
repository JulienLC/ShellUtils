#Example before /after of test  Unit sed testing 
# check also https://github.com/shellspec/shellspec to do it properly

echo "Before test"
export MY_VAR=file_to_modify.json
cat $MY_VAR
cp $MY_VAR.bck $MY_VAR

sed -i ‘s/https:\/\/dev\/api\/endpoint\/v1/https:\/\/value-dev\/api\/endpoint\/v1/g’ $MY_VAR
echo "After test"

cat $MY_VAR
