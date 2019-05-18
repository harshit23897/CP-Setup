#!/usr/bin/env bash
## Version 2.3

in="test#.txt"
out="output#.txt"

template_path="/Users/harshit/Documents/CP/template.cpp"
grader_path="/Users/harshit/Documents/CP/Algo/grader.sh"

directory=$1
number_of_test_cases=$2
number_of_codes=$3

if [ ! -d "$directory" ]; then
	mkdir -p "$directory"
fi

chr() {
  printf \\$(printf '%03o' $1)
}

cd "$directory"

cat "${grader_path}" > "grader.sh"

for (( i=1; i<=$number_of_test_cases; i++))
do
	TEST_CASE_IN=`echo $in | sed "s/#/$i/g"`
	touch "${TEST_CASE_IN}"

	TEST_CASE_OUT=`echo $out | sed "s/#/$i/g"`
	touch "${TEST_CASE_OUT}"	

	code_file_name="$(chr $((64 + $i))).cpp"
	cat "${template_path}" > "${code_file_name}"
done