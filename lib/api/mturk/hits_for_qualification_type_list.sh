######################################################################
#<
#
# Function:
#	p6_aws_mturk_hits_for_qualification_type_list(qualification_type_id)
#
#  Args:
#	qualification_type_id - 
#
#>
######################################################################
p6_aws_mturk_hits_for_qualification_type_list() {
    local qualification_type_id="$1"
    shift 1

    p6_run_read_cmd aws mturk list-hits-for-qualification-type --qualification-type-id $qualification_type_id "$@"
}