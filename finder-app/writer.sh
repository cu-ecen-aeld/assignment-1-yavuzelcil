file_path_w_filename=$1
string_to_write=$2

if [ -z "$file_path_w_filename" ] || [ -z "$string_to_write" ]
then
  echo "Error: Missing parameters. Usage: $0 <file_path_w_filename> <string_to_write>"
  exit 1
fi

mkdir -p "$(dirname "$file_path_w_filename")"

if [ $? -ne 0 ]
then
  echo "Error: Could not create directory for $file_path_w_filename"
  exit 1
fi

echo "$string_to_write" > "$file_path_w_filename"

if [ $? -ne 0 ]
then
  echo "Error: Could not create file $file_path_w_filename"
  exit 1
fi

