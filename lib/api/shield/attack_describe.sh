######################################################################
#<
#
# Function:
#	p6_aws_shield_attack_describe(attack_id)
#
#  Args:
#	attack_id - 
#
#>
######################################################################
p6_aws_shield_attack_describe() {
    local attack_id="$1"
    shift 1

    p6_run_read_cmd aws shield describe-attack --attack-id $attack_id "$@"
}