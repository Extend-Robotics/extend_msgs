# Header Values
std_msgs/Header header
# status string of the upload process
string status
# status mode of the the upload process
# 0 - Done
# 1 - Processing
# 2 - Uploading
std_msgs/Int16 status_mode
# total number of files to upload              
int32 num_files_to_upload   