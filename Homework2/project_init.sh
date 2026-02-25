#!/bin/bash
if [ -z "$1" ]; then
    echo "No project name provided"
    exit 1
fi
PROJECT_NAME="$1"
mkdir "$PROJECT_NAME"
mkdir "$PROJECT_NAME/data"
mkdir "$PROJECT_NAME/scripts"
mkdir "$PROJECT_NAME/results"
touch "$PROJECT_NAME/data/raw_data.txt"
chmod 600 "$PROJECT_NAME/data/raw_data.txt"
touch "$PROJECT_NAME/scripts/run_analysis.sh"
chmod +x "$PROJECT_NAME/scripts/run_analysis.sh"
echo '#!/bin/bash' > "$PROJECT_NAME/scripts/run_analysis.sh"
echo "echo \"Hello from $PROJECT_NAME\"" >> "$PROJECT_NAME/scripts/run_analysis.sh"
