# CP-Setup
This is a utility bash script for competitive programming (CP) contests.

This script will make folder, test case files (.txt), output files (.txt) and code (.cpp) files instantly. Using this script saves time making new folder for each CP contest. It will also copy your template into each of the code (.cpp) files.

## Usage
1. Download the script.
2. Edit the path of your template (from root) in `template_path` variable.
3. Run the script passing three commands.
* Path of directory where you want to make the new folder (from root).
* Number of test cases and output files which you want to make.
* Number of code files which you want to make.

```sh
. utility.sh <directory_name> <number_of_test_cases> <number_of_codes>
```

For e.g.
```sh
. utility.sh ../temp/ 3 3
```
