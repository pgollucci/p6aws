######################################################################
#<
#
# Function:
#	p6_aws_workdocs_folder_get(folder_id)
#
#  Args:
#	folder_id - 
#
#>
######################################################################
p6_aws_workdocs_folder_get() {
    local folder_id="$1"
    shift 1

    p6_run_read_cmd aws workdocs get-folder --folder-id $folder_id "$@"
}