######################################################################
#<
#
# Function:
#      = p6_aws_cloudformation_change_set_delete(change_set_name)
#
# Arg(s):
#    change_set_name - 
#
#
#>
######################################################################
p6_aws_cloudformation_change_set_delete() {
    local change_set_name="$1"
    shift 1

    p6_run_write_cmd aws cloudformation delete-change-set --change-set-name $change_set_name "$@"
}