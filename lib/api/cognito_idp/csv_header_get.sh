######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_csv_header_get(user_pool_id)
#
#  Args:
#	user_pool_id - 
#
#>
######################################################################
p6_aws_cognito_idp_csv_header_get() {
    local user_pool_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-idp get-csv-header --user-pool-id $user_pool_id "$@"
}