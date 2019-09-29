######################################################################
#<
#
# Function:
#      = p6_aws_cloudformation_change_set_execute(change_set_name)
#
# Arg(s):
#    change_set_name - 
#
#
#>
######################################################################
p6_aws_cloudformation_change_set_execute() {
    local change_set_name="$1"
    shift 1

    p6_run_write_cmd aws cloudformation execute-change-set --change-set-name $change_set_name "$@"
}