# This is my useful commands cache.

# Run a command repeateadly until success from https://stackoverflow.com/questions/5274294/how-can-you-run-a-command-in-bash-over-and-over-until-success
until <my command>; do echo "Try again"; sleep 2; done

# Mount a SMB share
sudo mount -t cifs -o username=<username>,dir_mode=0<dirmode eg 777>,file_mode=0<filemode eg 777> //<ip>/<subpath>/ <mount path>

# Mount a drive with the user permissions
sudo mount -o id=$(id) /dev/sdxx /folder

# Get byte size for a list of filepaths
cat list_of_fp.txt | xargs -I % wc -c % >> file_sizes.txt

# Download a tar and uncompress at the same time
wget -c <url>.tar.gz -O - | tar -xz
