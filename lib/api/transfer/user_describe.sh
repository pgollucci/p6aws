######################################################################
#<
#
# Function:
#	p6_aws_transfer_user_describe(server_id, user_name)
#
#  Args:
#	server_id - 
#	user_name - 
#
#>
######################################################################
p6_aws_transfer_user_describe() {
    local server_id="$1"
    local user_name="$2"
    shift 2

    p6_run_read_cmd aws transfer describe-user --server-id $server_id --user-name $user_name "$@"
}