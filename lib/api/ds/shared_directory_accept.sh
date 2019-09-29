######################################################################
#<
#
# Function:
#      = p6_aws_ds_shared_directory_accept(shared_directory_id)
#
# Arg(s):
#    shared_directory_id - 
#
#
#>
######################################################################
p6_aws_ds_shared_directory_accept() {
    local shared_directory_id="$1"
    shift 1

    p6_run_write_cmd aws ds accept-shared-directory --shared-directory-id $shared_directory_id "$@"
}