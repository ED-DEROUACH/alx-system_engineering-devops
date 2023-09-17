command_line_for_the_win

This README.md documents the steps performed on a Microsoft Windows system (version 10.0.22621.2283) to interact with a remote server using SFTP (Secure File Transfer Protocol) and perform various file and directory operations.

Step 1: Establishing SFTP Connection
Opened a command prompt in the Windows system.
Used the sftp command to connect to a remote server with the following command:
css
Copy code
sftp d4ee7a11973f@d4ee7a11973f.5d75dcb3.alx-cod.online
Entered the password when prompted and successfully connected.
Step 2: Listing Files on Remote Server
Used the ls command to list files and directories on the remote server.
Step 3: Attempted Git Clone (Not Supported in SFTP)
Attempted to use the git clone command to clone a Git repository, but it is not supported in SFTP.
Step 4: Navigating to a Specific Directory
Used the cd command to navigate to the "alx-system_engineering-devops" directory on the remote server.
Listed the contents of this directory using the ls command.
Step 5: Creating a New Directory
Created a new directory named "command_line_for_the_win" in the "alx-system_engineering-devops" directory on the remote server using the mkdir command.
Step 6: Printing the Working Directory
Printed the current working directory on the remote server using the pwd command.
Step 7: Attempted to Create a README File (Not Supported in SFTP)
Attempted to create a README.md file with content, but it is not supported in SFTP.
Step 8: Transferring Files
Printed the local working directory using the lpwd command.
Used the lcd command to change the local working directory to "C:\Users\PC\Desktop\Alx_devops."
Listed the files in the local directory using the lls command.
Printed the remote working directory again using the pwd command.
Printed the local working directory using the lpwd command.
Used the put * command to upload multiple files from the local directory to the remote directory.
The files were successfully transferred to the "command_line_for_the_win" directory on the remote server.

Please note that while SFTP is primarily used for secure file transfer, certain shell commands (such as git clone and file creation) are not supported within the SFTP environment. To perform such operations, an SSH connection with a full shell is required.
