######################################################################
#<
#
# Function:
#	p6_aws_secretsmanager_rotate_secret_cancel(secret_id)
#
#  Args:
#	secret_id - 
#
#>
######################################################################
p6_aws_secretsmanager_rotate_secret_cancel() {
    local secret_id="$1"
    shift 1

    p6_run_write_cmd aws secretsmanager cancel-rotate-secret --secret-id $secret_id "$@"
}