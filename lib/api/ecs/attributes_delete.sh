######################################################################
#<
#
# Function:
#      = p6_aws_ecs_attributes_delete(attributes)
#
# Arg(s):
#    attributes - 
#
#
#>
######################################################################
p6_aws_ecs_attributes_delete() {
    local attributes="$1"
    shift 1

    p6_run_write_cmd aws ecs delete-attributes --attributes $attributes "$@"
}