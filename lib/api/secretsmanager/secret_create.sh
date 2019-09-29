######################################################################
#<
#
# Function:
#      = p6_aws_secretsmanager_secret_create(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_secretsmanager_secret_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws secretsmanager create-secret --name $name "$@"
}