######################################################################
#<
#
# Function:
#	p6_aws_ds_trust_update(trust_id)
#
#  Args:
#	trust_id - 
#
#>
######################################################################
p6_aws_ds_trust_update() {
    local trust_id="$1"
    shift 1

    p6_run_write_cmd aws ds update-trust --trust-id $trust_id "$@"
}