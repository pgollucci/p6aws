######################################################################
#<
#
# Function:
#      = p6_aws_batch_job_queue_update(job_queue)
#
# Arg(s):
#    job_queue - 
#
#
#>
######################################################################
p6_aws_batch_job_queue_update() {
    local job_queue="$1"
    shift 1

    p6_run_write_cmd aws batch update-job-queue --job-queue $job_queue "$@"
}