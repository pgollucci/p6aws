######################################################################
#<
#
# Function:
#      = p6_aws_secretsmanager_secret_restore(secret_id)
#
# Arg(s):
#    secret_id - 
#
#
#>
######################################################################
p6_aws_secretsmanager_secret_restore() {
    local secret_id="$1"
    shift 1

    p6_run_write_cmd aws secretsmanager restore-secret --secret-id $secret_id "$@"
}