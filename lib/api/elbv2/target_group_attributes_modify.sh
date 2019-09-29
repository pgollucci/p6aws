######################################################################
#<
#
# Function:
#      = p6_aws_elbv2_target_group_attributes_modify(target_group_arn, attributes)
#
# Arg(s):
#    target_group_arn - 
#    attributes - 
#
#
#>
######################################################################
p6_aws_elbv2_target_group_attributes_modify() {
    local target_group_arn="$1"
    local attributes="$2"
    shift 2

    p6_run_read_cmd aws elbv2 modify-target-group-attributes --target-group-arn $target_group_arn --attributes $attributes "$@"
}