######################################################################
#<
#
# Function:
#	p6_aws_mturk_qualification_from_worker_disassociate(worker_id, qualification_type_id)
#
#  Args:
#	worker_id - 
#	qualification_type_id - 
#
#>
######################################################################
p6_aws_mturk_qualification_from_worker_disassociate() {
    local worker_id="$1"
    local qualification_type_id="$2"
    shift 2

    p6_run_write_cmd aws mturk disassociate-qualification-from-worker --worker-id $worker_id --qualification-type-id $qualification_type_id "$@"
}