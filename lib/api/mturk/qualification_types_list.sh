######################################################################
#<
#
# Function:
#	p6_aws_mturk_qualification_types_list(must_be_requestable)
#
#  Args:
#	must_be_requestable - 
#
#>
######################################################################
p6_aws_mturk_qualification_types_list() {
    local must_be_requestable="$1"
    shift 1

    p6_run_read_cmd aws mturk list-qualification-types --must-be-requestable $must_be_requestable "$@"
}