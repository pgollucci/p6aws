######################################################################
#<
#
# Function:
#	p6_aws_globalaccelerator_accelerator_attributes_update()
#
#>
######################################################################
p6_aws_globalaccelerator_accelerator_attributes_update() {

    p6_run_write_cmd aws globalaccelerator update-accelerator-attributes "$@"
}