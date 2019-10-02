######################################################################
#<
#
# Function:
#	p6_aws_mturk_qualification_type_delete(qualification_type_id)
#
#  Args:
#	qualification_type_id - 
#
#>
######################################################################
p6_aws_mturk_qualification_type_delete() {
    local qualification_type_id="$1"
    shift 1

    p6_run_write_cmd aws mturk delete-qualification-type --qualification-type-id $qualification_type_id "$@"
}