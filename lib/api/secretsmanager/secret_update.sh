######################################################################
#<
#
# Function:
#      = p6_aws_secretsmanager_secret_update(secret_id)
#
# Arg(s):
#    secret_id - 
#
#
#>
######################################################################
p6_aws_secretsmanager_secret_update() {
    local secret_id="$1"
    shift 1

    p6_run_write_cmd aws secretsmanager update-secret --secret-id $secret_id "$@"
}