######################################################################
#<
#
# Function:
#	p6_aws_appstream_fleet_create(name, instance_type, compute_capacity)
#
#  Args:
#	name - 
#	instance_type - 
#	compute_capacity - 
#
#>
######################################################################
p6_aws_appstream_fleet_create() {
    local name="$1"
    local instance_type="$2"
    local compute_capacity="$3"
    shift 3

    p6_run_write_cmd aws appstream create-fleet --name $name --instance-type $instance_type --compute-capacity $compute_capacity "$@"
}