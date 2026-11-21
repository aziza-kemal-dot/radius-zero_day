#!/usr/bin/env bash

# Choose the output directory
OUTPUT_DIR="${1:-$HOME/radius-projects/website-project}"

# Check whether the destination already exists
if [ -e "$OUTPUT_DIR" ]; then
    echo "Error: The destination already exists: $OUTPUT_DIR"
    exit 1
fi

# Create the website directories
mkdir -p "$OUTPUT_DIR/css" "$OUTPUT_DIR/js" "$OUTPUT_DIR/images"

# Create the main HTML file
cat > "$OUTPUT_DIR/index.html" <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Website</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>Welcome to My Website</h1>
    <p>This website was created using a Bash script.</p>

    <script src="js/script.js"></script>
</body>
</html>
EOF

# Create the CSS file
cat > "$OUTPUT_DIR/css/style.css" <<'EOF'
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    text-align: center;
    padding: 30px;
}

h1 {
    color: navy;
}
EOF

# Create the JavaScript file
cat > "$OUTPUT_DIR/js/script.js" <<'EOF'
console.log("Welcome to my website project!");
EOF

# Create README files
cat > "$OUTPUT_DIR/README.md" <<'EOF'
# Website Project

This is a basic website project generated using a Bash script.
It contains HTML, CSS, JavaScript, and images directories.
EOF

cat > "$OUTPUT_DIR/css/README.md" <<'EOF'
# CSS Directory

This directory contains CSS files used to style the website.
EOF

cat > "$OUTPUT_DIR/js/README.md" <<'EOF'
# JavaScript Directory

This directory contains JavaScript files used to add interactivity.
EOF

cat > "$OUTPUT_DIR/images/README.md" <<'EOF'
# Images Directory

This directory stores images used in the website project.
EOF

# Display completion message
echo "Website project created successfully!"
echo "Project location: $OUTPUT_DIR"
