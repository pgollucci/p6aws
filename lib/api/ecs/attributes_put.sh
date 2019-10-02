######################################################################
#<
#
# Function:
#	p6_aws_ecs_attributes_put(attributes)
#
#  Args:
#	attributes - 
#
#>
######################################################################
p6_aws_ecs_attributes_put() {
    local attributes="$1"
    shift 1

    p6_run_write_cmd aws ecs put-attributes --attributes $attributes "$@"
}