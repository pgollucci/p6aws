######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_stack_create(name, service_role_arn, default_instance_profile_arn, stack_region)
#
# Arg(s):
#    name - 
#    service_role_arn - 
#    default_instance_profile_arn - 
#    stack_region - 
#
#
#>
######################################################################
p6_aws_opsworks_stack_create() {
    local name="$1"
    local service_role_arn="$2"
    local default_instance_profile_arn="$3"
    local stack_region="$4"
    shift 4

    p6_run_write_cmd aws opsworks create-stack --name $name --service-role-arn $service_role_arn --default-instance-profile-arn $default_instance_profile_arn --stack-region $stack_region "$@"
}