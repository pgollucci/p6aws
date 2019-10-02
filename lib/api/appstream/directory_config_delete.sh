######################################################################
#<
#
# Function:
#	p6_aws_appstream_directory_config_delete(directory_name)
#
#  Args:
#	directory_name - 
#
#>
######################################################################
p6_aws_appstream_directory_config_delete() {
    local directory_name="$1"
    shift 1

    p6_run_write_cmd aws appstream delete-directory-config --directory-name $directory_name "$@"
}