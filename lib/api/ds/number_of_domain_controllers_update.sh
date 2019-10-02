######################################################################
#<
#
# Function:
#	p6_aws_ds_number_of_domain_controllers_update(directory_id, desired_number)
#
#  Args:
#	directory_id - 
#	desired_number - 
#
#>
######################################################################
p6_aws_ds_number_of_domain_controllers_update() {
    local directory_id="$1"
    local desired_number="$2"
    shift 2

    p6_run_write_cmd aws ds update-number-of-domain-controllers --directory-id $directory_id --desired-number $desired_number "$@"
}