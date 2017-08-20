#!/bin/bash
# input/output obi matching script

function program_info {
      filename=$(basename "$program_file")
      program_extension="${filename##*.}"
      program_filename="${filename%.*}"
}

function get_path_and_filename {
      path_and_filename=$(echo "$1" | cut -f 1,2 -d '.')
}

function select_runner {
      case $program_extension in
            js)
                  runner="node $program_file"
                  ;;
            py3)
                  runner="python3 $program_file"
                  ;;
            py2)
                  runner="python $program_file"
                  ;;
            cpp)
                  g++ -o $program_filename $program_file
                  runner="./${program_filename}"
                  ;;
            c)
                  gcc -o $program_filename $program_file
                  runner="./${program_filename}"
                  ;;
            java)
                  javac $program_file
                  runner="java ${program_filename%-*}"
                  ;;
            pas)
                  fpc $program_file
                  runner="./${program_filename}"
                  ;;
      esac
}

function is_diff {
      cat <<EOM
$runner < $input

#input $1
$(cat $1)

# expected $2
$(cat $2)

# actual
$3
EOM
}

program_file=$1
test_cases=$2
program_info
select_runner

for input in $(find $test_cases -type f -name "*.in"); do
      get_path_and_filename $input
      output="${path_and_filename}.sol"

      # echo "$runner < $input"
      response=$($runner < $input)
      # response=$($runner < $input > response.sol)

      DIFF=$(diff $output <(echo $response))

      if [ "$DIFF" != "" ]; then
            is_diff $input $output $response
            exit
      fi
done

# if [ "$program_extension" == "c" ]; then
#       rm $program_filename
# elif [ "$program_extension" == "cpp" ]; then
#       rm $program_filename
# elif [ "$program_extension" == "java" ]; then
#       rm ${program_filename%-*}
# fi

echo "solved!"
