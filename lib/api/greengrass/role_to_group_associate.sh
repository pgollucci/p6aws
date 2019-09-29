######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_role_to_group_associate(group_id, role_arn)
#
# Arg(s):
#    group_id - 
#    role_arn - 
#
#
#>
######################################################################
p6_aws_greengrass_role_to_group_associate() {
    local group_id="$1"
    local role_arn="$2"
    shift 2

    p6_run_write_cmd aws greengrass associate-role-to-group --group-id $group_id --role-arn $role_arn "$@"
}