######################################################################
#<
#
# Function:
#	p6_aws_opsworks_hostname_suggestion_get(layer_id)
#
#  Args:
#	layer_id - 
#
#>
######################################################################
p6_aws_opsworks_hostname_suggestion_get() {
    local layer_id="$1"
    shift 1

    p6_run_read_cmd aws opsworks get-hostname-suggestion --layer-id $layer_id "$@"
}