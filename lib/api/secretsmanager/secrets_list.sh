######################################################################
#<
#
# Function:
#	p6_aws_secretsmanager_secrets_list()
#
#>
######################################################################
p6_aws_secretsmanager_secrets_list() {

    p6_run_read_cmd aws secretsmanager list-secrets "$@"
}