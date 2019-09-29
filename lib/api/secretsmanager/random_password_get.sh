######################################################################
#<
#
# Function:
#      = p6_aws_secretsmanager_random_password_get()
#
#
#
#>
######################################################################
p6_aws_secretsmanager_random_password_get() {

    p6_run_read_cmd aws secretsmanager get-random-password "$@"
}