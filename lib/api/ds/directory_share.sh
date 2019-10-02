######################################################################
#<
#
# Function:
#	p6_aws_ds_directory_share(directory_id, share_target, share_method)
#
#  Args:
#	directory_id - 
#	share_target - 
#	share_method - 
#
#>
######################################################################
p6_aws_ds_directory_share() {
    local directory_id="$1"
    local share_target="$2"
    local share_method="$3"
    shift 3

    p6_run_write_cmd aws ds share-directory --directory-id $directory_id --share-target $share_target --share-method $share_method "$@"
}