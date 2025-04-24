#!/bin/bash

set -e
cd build

# Build
echo "Building RDKit with Java wrapper..."
make GraphMolWrap -j8

# Replace the generated file with the debug version
echo "Replacing the generated file with the debug version..."
cp ../Code/JavaWrappers/gmwrapper/RDProps_debug.java ../Code/JavaWrappers/gmwrapper/src/org/RDKit/RDProps.java

# Delete the compiled Java files
echo "Deleting the compiled Java files..."
rm -rf ../Code/JavaWrappers/gmwrapper/build
rm -f ../Code/JavaWrappers/gmwrapper/org.RDKit.jar
rm -f ../Code/JavaWrappers/gmwrapper/org.RDKitDoc.jar

# Build the Java wrapper
echo "Building the Java wrapper..."
make GraphMolWrapJar

# Install to `knime-rdkit`
echo "Installing to knime-rdkit..."
if [[ "$OSTYPE" == "darwin"* ]]; then
    cp ../Code/JavaWrappers/gmwrapper/org.RDKit.jar ../../knime-rdkit/org.rdkit.knime.types/lib
    cp Code/JavaWrappers/gmwrapper/libGraphMolWrap.jnilib ../../knime-rdkit/org.rdkit.knime.bin.macosx.aarch64/os/macosx/aarch64
else
    # Linux:
    cp ../Code/JavaWrappers/gmwrapper/org.RDKit.jar ../../knime-rdkit/org.rdkit.knime.types/lib
    cp Code/JavaWrappers/gmwrapper/libGraphMolWrap.so ../../knime-rdkit/org.rdkit.knime.bin.linux.x86_64/os/linux/x86_64/
fi