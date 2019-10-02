######################################################################
#<
#
# Function:
#	p6_aws_workdocs_folder_contents_describe(folder_id)
#
#  Args:
#	folder_id - 
#
#>
######################################################################
p6_aws_workdocs_folder_contents_describe() {
    local folder_id="$1"
    shift 1

    p6_run_read_cmd aws workdocs describe-folder-contents --folder-id $folder_id "$@"
}