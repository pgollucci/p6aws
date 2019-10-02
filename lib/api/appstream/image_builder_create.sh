######################################################################
#<
#
# Function:
#	p6_aws_appstream_image_builder_create(name, instance_type)
#
#  Args:
#	name - 
#	instance_type - 
#
#>
######################################################################
p6_aws_appstream_image_builder_create() {
    local name="$1"
    local instance_type="$2"
    shift 2

    p6_run_write_cmd aws appstream create-image-builder --name $name --instance-type $instance_type "$@"
}