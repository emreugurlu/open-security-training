#!/bin/bash

# Create SCORM package for Cybersecurity & Privacy Training

echo "Creating SCORM package..."

# Create a temporary directory for the package
PACKAGE_DIR="scorm-package"
rm -rf $PACKAGE_DIR
mkdir -p $PACKAGE_DIR

# Copy the main files
echo "Copying main training file..."
cp cybersecurity-privacy-training-combined.html $PACKAGE_DIR/

# Copy the manifest
echo "Copying SCORM manifest..."
cp imsmanifest.xml $PACKAGE_DIR/

# Copy all module directories with their content
echo "Copying phishing module..."
cp -r phishing-smishing-vishing-training $PACKAGE_DIR/

echo "Copying CEO fraud module..."
cp -r ceo-executive-fraud-training $PACKAGE_DIR/

echo "Copying watering hole module..."
cp -r watering-hole-attacks-training $PACKAGE_DIR/

echo "Copying general cybersecurity module..."
cp -r general-cybersecurity-training $PACKAGE_DIR/

echo "Copying privacy awareness module..."
cp -r privacy-awareness-training $PACKAGE_DIR/

echo "Copying secure coding module..."
cp -r secure-coding-training $PACKAGE_DIR/

# Create the ZIP file
echo "Creating ZIP package..."
cd $PACKAGE_DIR
zip -r ../cybersecurity-privacy-training-scorm.zip *
cd ..

# Clean up
rm -rf $PACKAGE_DIR

echo "✅ SCORM package created: cybersecurity-privacy-training-scorm.zip"
echo ""
echo "This package contains:"
echo "  - imsmanifest.xml (SCORM manifest)"
echo "  - cybersecurity-privacy-training-combined.html (main launcher)"
echo "  - All six training modules in their directories"
echo ""
echo "You can now upload this ZIP file to any SCORM-compliant LMS!"