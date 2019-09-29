######################################################################
#<
#
# Function:
#      = p6_aws_ds_shared_directory_reject(shared_directory_id)
#
# Arg(s):
#    shared_directory_id - 
#
#
#>
######################################################################
p6_aws_ds_shared_directory_reject() {
    local shared_directory_id="$1"
    shift 1

    p6_run_write_cmd aws ds reject-shared-directory --shared-directory-id $shared_directory_id "$@"
}