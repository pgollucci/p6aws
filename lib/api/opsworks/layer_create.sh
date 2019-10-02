######################################################################
#<
#
# Function:
#	p6_aws_opsworks_layer_create(stack_id, type, name, shortname)
#
#  Args:
#	stack_id - 
#	type - 
#	name - 
#	shortname - 
#
#>
######################################################################
p6_aws_opsworks_layer_create() {
    local stack_id="$1"
    local type="$2"
    local name="$3"
    local shortname="$4"
    shift 4

    p6_run_write_cmd aws opsworks create-layer --stack-id $stack_id --type $type --name $name --shortname $shortname "$@"
}