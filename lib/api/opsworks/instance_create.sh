######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_instance_create(stack_id, layer_ids, instance_type)
#
# Arg(s):
#    stack_id - 
#    layer_ids - 
#    instance_type - 
#
#
#>
######################################################################
p6_aws_opsworks_instance_create() {
    local stack_id="$1"
    local layer_ids="$2"
    local instance_type="$3"
    shift 3

    p6_run_write_cmd aws opsworks create-instance --stack-id $stack_id --layer-ids $layer_ids --instance-type $instance_type "$@"
}