#!/bin/bash

failed=false

mkdir -p results

for problem in sql/*.sql; do
    printf "$problem "
    problem_id=$(basename "${problem%.sql}")
    result="results/$problem_id.out"
    expected="expected/$problem_id.out"

    # Run the SQL and capture output
    psql < "$problem" > "$result" 2> /dev/null

    # Strip trailing blank lines at end of file (matches expected exactly)
    sed -i -e :a -e '/^[[:space:]]*$/{$d;N;ba' -e '}' "$result"

    DIFF=$(diff -B "$expected" "$result")
    if [ -z "$DIFF" ]; then
        echo pass
    else
        echo fail
        failed=true
    fi
done

if [ "$failed" = "true" ]; then
    exit 2
fi
