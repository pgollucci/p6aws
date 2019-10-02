######################################################################
#<
#
# Function:
#	p6_aws_shield_protection_delete(protection_id)
#
#  Args:
#	protection_id - 
#
#>
######################################################################
p6_aws_shield_protection_delete() {
    local protection_id="$1"
    shift 1

    p6_run_write_cmd aws shield delete-protection --protection-id $protection_id "$@"
}