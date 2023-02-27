#!/bin/bash

# take in an argument n
n=$1
n=$((n+1))

# enter the command "history | tail -n n" and take the output
output=$(history | tail -n $n)

# remove the last line from the output
output=$(echo "$output" | sed '$d')

# delete the first 7 characters from each line of the output
output=$(echo "$output" | sed 's/.\{7\}//')

echo "showing output"
echo "$output"

# ask user for name for the new file
read -p "Enter the name for the new file: " filename

# create a new shell script with the output and name it what the user provided
echo "#!/bin/bash" > "$filename.sh"
echo "$output" >> "$filename.sh"
chmod +x "$filename.sh"

echo "New script $filename.sh has been created."

echo "Now adding $filename.sh to local/bin"
sudo cp "$filename.sh" /usr/local/bin/"$filename"
sudo chmod +x /usr/local/bin/"$filename"
echo "Script installed successfully!"

echo "add alias to .bashrc"
    echo "alias $filename='. $filename'" >> ~/.bashrc
echo "Alias added to .bashrc"
echo "reload .bashrc to use the alias"
. ~/.bashrc

# delete the temporary file
echo "deleting temporary file"
sudo rm "$filename.sh"



