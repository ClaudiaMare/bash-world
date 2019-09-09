#!/bin/bash

#############################################################
# <main_folder> is the name of the folder you can pass via the script:
# <bash blueprint.sh name>
main_folder=$1

# names of the sub_folders can be customized and edited here:
sub_folder_1=00_TO_DO
sub_folder_2=01_DOING
sub_folder_3=02_DONE

# names of the meta_file and initial content can be customized and edited here:
meta_file=README.txt
meta_content="This is a meta file. // MORE CONTENT TO BE ADDED"

#############################################################
if [[ $# -ne 1 ]] ; then
    echo 'Please provide a parameter:  <bash blueprint.sh script_parameter>'
    exit 1
fi

#############################################################
# create a main_folder:
mkdir $main_folder

# move inside the main_folder:
cd $main_folder

# create three sub_folders inside the main_folder:
mkdir $sub_folder_1
mkdir $sub_folder_2
mkdir $sub_folder_3

# create a meta_file inside the main_folder:
touch $meta_file

# write meta_content in meta_file
echo $meta_content >> $meta_file
