######################################################################
#<
#
# Function:
#	p6_aws_mturk_granted(qualification_type_id)
#
#  Args:
#	qualification_type_id - 
#
#>
######################################################################
p6_aws_mturk_granted() {
        local qualification_type_id="$1"
        shift 1

    cond_log_and_run aws mturk update-qualification-type --qualification-type-id $qualification_type_id --auto-granted "$@"
}