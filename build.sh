# Delete the previous build and recreate the build folders.
rm -rf build
mkdir build
mkdir build/lib

# Copy the libraries and HTML file to the build.
cp -R static-lib/* build/lib
cp src/html/* build

# Use Browserify to compile the codebase into a single JavaScript file in the
# build directory, maintaining support for require() in the browser.
# @see http://browserify.org/
cd src/js
browserify Game.js -o ../../build/rl-min.js
