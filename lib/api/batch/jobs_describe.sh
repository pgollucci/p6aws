######################################################################
#<
#
# Function:
#      = p6_aws_batch_jobs_describe(jobs)
#
# Arg(s):
#    jobs - 
#
#
#>
######################################################################
p6_aws_batch_jobs_describe() {
    local jobs="$1"
    shift 1

    p6_run_read_cmd aws batch describe-jobs --jobs $jobs "$@"
}