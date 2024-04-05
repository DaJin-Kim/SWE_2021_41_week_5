# Weekly Assignment 5
#!/bin/bash

# 현재 디렉토리 내에서 파일을 이동할 디렉토리 설정
search_dir="."
move_to_dir="."

# 알파벳 문자열 정의
alphabet="abcdefghijklmnopqrstuvwxyz"

# 각 문자에 대해 파일 이동 실행
for char in $(echo $alphabet | grep -o .); do
    # 해당 문자로 시작하는 파일 찾기
    files=$(find "$search_dir" -type f -name "$char*")
    
    # 파일을 새 경로로 이동
    for file in $files; do
        new_path="$move_to_dir/$char"
        mv "$file" "$new_path"
        echo "Moved $file to $new_path"
    done
done