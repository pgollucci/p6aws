######################################################################
#<
#
# Function:
#	p6_aws_ds_conditional_forwarder_delete(directory_id, remote_domain_name)
#
#  Args:
#	directory_id - 
#	remote_domain_name - 
#
#>
######################################################################
p6_aws_ds_conditional_forwarder_delete() {
    local directory_id="$1"
    local remote_domain_name="$2"
    shift 2

    p6_run_write_cmd aws ds delete-conditional-forwarder --directory-id $directory_id --remote-domain-name $remote_domain_name "$@"
}