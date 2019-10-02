######################################################################
#<
#
# Function:
#	p6_aws_appstream_image_permissions_delete(name, shared_account_id)
#
#  Args:
#	name - 
#	shared_account_id - 
#
#>
######################################################################
p6_aws_appstream_image_permissions_delete() {
    local name="$1"
    local shared_account_id="$2"
    shift 2

    p6_run_write_cmd aws appstream delete-image-permissions --name $name --shared-account-id $shared_account_id "$@"
}