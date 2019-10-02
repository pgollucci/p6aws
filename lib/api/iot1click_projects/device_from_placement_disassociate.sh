######################################################################
#<
#
# Function:
#	p6_aws_iot1click_projects_device_from_placement_disassociate(project_name, placement_name, device_template_name)
#
#  Args:
#	project_name - 
#	placement_name - 
#	device_template_name - 
#
#>
######################################################################
p6_aws_iot1click_projects_device_from_placement_disassociate() {
    local project_name="$1"
    local placement_name="$2"
    local device_template_name="$3"
    shift 3

    p6_run_write_cmd aws iot1click-projects disassociate-device-from-placement --project-name $project_name --placement-name $placement_name --device-template-name $device_template_name "$@"
}