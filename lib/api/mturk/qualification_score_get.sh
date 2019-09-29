######################################################################
#<
#
# Function:
#      = p6_aws_mturk_qualification_score_get(qualification_type_id, worker_id)
#
# Arg(s):
#    qualification_type_id - 
#    worker_id - 
#
#
#>
######################################################################
p6_aws_mturk_qualification_score_get() {
    local qualification_type_id="$1"
    local worker_id="$2"
    shift 2

    p6_run_read_cmd aws mturk get-qualification-score --qualification-type-id $qualification_type_id --worker-id $worker_id "$@"
}