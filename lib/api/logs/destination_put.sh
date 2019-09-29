######################################################################
#<
#
# Function:
#      = p6_aws_logs_destination_put(destination_name, target_arn, role_arn)
#
# Arg(s):
#    destination_name - 
#    target_arn - 
#    role_arn - 
#
#
#>
######################################################################
p6_aws_logs_destination_put() {
    local destination_name="$1"
    local target_arn="$2"
    local role_arn="$3"
    shift 3

    p6_run_write_cmd aws logs put-destination --destination-name $destination_name --target-arn $target_arn --role-arn $role_arn "$@"
}