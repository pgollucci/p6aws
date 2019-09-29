######################################################################
#<
#
# Function:
#      = p6_aws_chime_account_create(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_chime_account_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws chime create-account --name $name "$@"
}