# Header Values
std_msgs/Header header
# status string of the upload process
string status
# status mode of the the upload process
# 0 - Done
# 1 - Processing
# 2 - Uploading
# 3 - Error
std_msgs/Int16 status_mode
# name of the current file being uploaded
string current_file_name    
# size of the current file being uploaded (formatted as string)
string current_file_size    
# total number of files to upload              
int32 num_files_to_upload
# total size of files to upload (formatted as string)
string num_files_to_upload_size    
# estimated time remaining (formatted as string)
string estimated_time_remaining    
