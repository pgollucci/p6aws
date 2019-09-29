######################################################################
#<
#
# Function:
#      = p6_aws_workdocs_folder_delete(folder_id)
#
# Arg(s):
#    folder_id - 
#
#
#>
######################################################################
p6_aws_workdocs_folder_delete() {
    local folder_id="$1"
    shift 1

    p6_run_write_cmd aws workdocs delete-folder --folder-id $folder_id "$@"
}