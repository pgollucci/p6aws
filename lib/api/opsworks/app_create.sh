######################################################################
#<
#
# Function:
#	p6_aws_opsworks_app_create(stack_id, name, type)
#
#  Args:
#	stack_id - 
#	name - 
#	type - 
#
#>
######################################################################
p6_aws_opsworks_app_create() {
    local stack_id="$1"
    local name="$2"
    local type="$3"
    shift 3

    p6_run_write_cmd aws opsworks create-app --stack-id $stack_id --name $name --type $type "$@"
}