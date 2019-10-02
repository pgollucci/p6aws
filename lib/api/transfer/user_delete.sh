######################################################################
#<
#
# Function:
#	p6_aws_transfer_user_delete(server_id, user_name)
#
#  Args:
#	server_id - 
#	user_name - 
#
#>
######################################################################
p6_aws_transfer_user_delete() {
    local server_id="$1"
    local user_name="$2"
    shift 2

    p6_run_write_cmd aws transfer delete-user --server-id $server_id --user-name $user_name "$@"
}